import 'package:jam_dart_models/models.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

abstract class DatabaseInterface {
  Map<String, Table<dynamic>> get tables;

  Future<bool> initialize({
    String metadataPath,
    @required
        Map<String, Table<dynamic> Function(Table<dynamic>)> instanceCreators,
  });

  void resolvePaths(String key, String value);

  Observable<bool> exists<T extends Data>(
    Table<T> table, {
    String searchColumn,
    String operator,
    dynamic searchKey,
  });

  Observable<T> get<T extends Data>(
    Table<T> table, {
    @required String key,
  });

  Observable<T> find<T extends Data>(
    Table<T> table, {
    @required String searchColumn,
    @required dynamic searchKey,
  });

  Observable<T> lookup<T extends Data>(
    Table<T> table, {
    @required String searchColumn,
    dynamic searchKey,
  });

  Observable<T> forceGet<T extends Data>(
    Table<T> table, {
    @required T item,
    @required String searchColumn,
    dynamic searchKey,
  });

  Observable<T> forceLookup<T extends Data>(
    Table<T> table, {
    @required T item,
    @required String searchColumn,
    dynamic searchKey,
  });

  Observable<List<T>> list<T extends Data>(
    Table<T> table,
  );

  Observable<List<T>> listFirst<T extends Data>(
    Table<T> table, {
    @required int limit,
  });

  Observable<List<T>> getMany<T extends Data>(
    Table<T> table, {
    @required List<String> keys,
  });

  Observable<List<T>> findMany<T extends Data>(
    Table<T> table, {
    @required String searchColumn,
    @required List<String> searchKeys,
  });

  Observable<List<T>> findAround<T extends Data>(
    Table<T> table, {
    @required GeoPoint center,
    @required double radiusInKm,
    @required String locationFieldNameInDB,
  });

  Observable<List<T>> where<T extends Data>(
    Table<T> table, {
    @required String searchColumn,
    @required String operator,
    @required dynamic searchKey,
  });

  Observable<List<T>> filter<T extends Data>(
    Table<T> table, {
    @required String searchColumn,
    @required String operator,
    @required dynamic searchKey,
  });

  Observable<bool> clone<S extends Data, T extends Data>({
    @required Table<S> sourceTable,
    @required Table<T> targetTable,
    bool replace = false,
  });

  Observable<String> add<T extends Data>(
    Table<T> table, {
    @required T item,
  });

  Observable<List<String>> addMany<T extends Data>(
    Table<T> table, {
    @required List<T> items,
  });

  Observable<String> modify<T extends Data>(
    Table<T> table, {
    @required T item,
    String searchColumn,
    dynamic searchKey,
  });

  Observable<String> modifyElseAdd<T extends Data>(
    Table<T> table, {
    @required T item,
    String searchColumn,
    dynamic searchKey,
  });

  Observable<String> modifyFields<T extends Data>(
    Table<T> table, {
    @required T item,
    String searchColumn,
    dynamic searchKey,
  });

  Observable<String> modifyFieldsMany<T extends Data>(
    Table<T> table, {
    @required List<T> items,
    String searchColumn,
    dynamic searchKey,
  });

  Observable<T> remove<T extends Data>(
    Table<T> table, {
    @required String key,
  });

  Observable<T> removeMany<T extends Data>(
    Table<T> table, {
    @required List<String> keys,
  });
}
