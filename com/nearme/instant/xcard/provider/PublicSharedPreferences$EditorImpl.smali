.class public final Lcom/nearme/instant/xcard/provider/PublicSharedPreferences$EditorImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/instant/xcard/provider/PublicSharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EditorImpl"
.end annotation


# instance fields
.field private mClear:Z

.field private final mModified:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/nearme/instant/xcard/provider/PublicSharedPreferences;


# direct methods
.method public constructor <init>(Lcom/nearme/instant/xcard/provider/PublicSharedPreferences;)V
    .registers 2

    iput-object p1, p0, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences$EditorImpl;->this$0:Lcom/nearme/instant/xcard/provider/PublicSharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences$EditorImpl;->mModified:Ljava/util/Map;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences$EditorImpl;->mClear:Z

    return-void
.end method

.method private setValue(Ljava/lang/String;)Z
    .registers 8

    iget-object v0, p0, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences$EditorImpl;->this$0:Lcom/nearme/instant/xcard/provider/PublicSharedPreferences;

    invoke-static {v0}, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences;->access$000(Lcom/nearme/instant/xcard/provider/PublicSharedPreferences;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    iget-boolean v2, p0, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences$EditorImpl;->mClear:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    monitor-enter p0

    :try_start_12
    invoke-static {}, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences;->access$100()Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v4, "public_shared_pref"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v2, p0, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences$EditorImpl;->mModified:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-static {v2}, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences$ReflectionUtil;->contentValuesNewInstance(Ljava/util/HashMap;)Landroid/content/ContentValues;

    move-result-object v2
    :try_end_29
    .catchall {:try_start_12 .. :try_end_29} :catchall_77

    const/4 v4, 0x0

    :try_start_2a
    iget-object v5, p0, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences$EditorImpl;->this$0:Lcom/nearme/instant/xcard/provider/PublicSharedPreferences;

    invoke-static {v5}, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences;->access$200(Lcom/nearme/instant/xcard/provider/PublicSharedPreferences;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v5
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_38} :catch_58
    .catchall {:try_start_2a .. :try_end_38} :catchall_56

    if-eqz v5, :cond_47

    :try_start_3a
    invoke-virtual {v5, p1, v2, v4, v1}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3e} :catch_44
    .catchall {:try_start_3a .. :try_end_3e} :catchall_41

    if-lez p1, :cond_47

    goto :goto_48

    :catchall_41
    move-exception p1

    move-object v4, v5

    goto :goto_6a

    :catch_44
    move-exception p1

    move-object v4, v5

    goto :goto_59

    :cond_47
    move v0, v3

    :goto_48
    if-eqz v5, :cond_4d

    :try_start_4a
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V

    :cond_4d
    iget-object p1, p0, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iput-boolean v3, p0, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences$EditorImpl;->mClear:Z
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_77

    move v3, v0

    goto :goto_68

    :catchall_56
    move-exception p1

    goto :goto_6a

    :catch_58
    move-exception p1

    :goto_59
    :try_start_59
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_56

    if-eqz v4, :cond_61

    :try_start_5e
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->close()V

    :cond_61
    iget-object p1, p0, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iput-boolean v3, p0, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences$EditorImpl;->mClear:Z

    :goto_68
    monitor-exit p0

    return v3

    :goto_6a
    if-eqz v4, :cond_6f

    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->close()V

    :cond_6f
    iget-object v0, p0, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-boolean v3, p0, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences$EditorImpl;->mClear:Z

    throw p1

    :catchall_77
    move-exception p1

    monitor-exit p0
    :try_end_79
    .catchall {:try_start_5e .. :try_end_79} :catchall_77

    throw p1
.end method


# virtual methods
.method public apply()V
    .registers 2

    const-string v0, "apply"

    invoke-direct {p0, v0}, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences$EditorImpl;->setValue(Ljava/lang/String;)Z

    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences$EditorImpl;->mClear:Z

    monitor-exit p0

    return-object p0

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public commit()Z
    .registers 2

    const-string v0, "commit"

    invoke-direct {p0, v0}, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences$EditorImpl;->setValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object p0

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object p0

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object p0

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object p0

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object p0

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences$EditorImpl;->mModified:Ljava/util/Map;

    if-nez p2, :cond_7

    const/4 p2, 0x0

    goto :goto_d

    :cond_7
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object p2, v1

    :goto_d
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object p0

    :catchall_12
    move-exception p1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nearme/instant/xcard/provider/PublicSharedPreferences$EditorImpl;->mModified:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object p0

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw p1
.end method
