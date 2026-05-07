.class public Lcom/otest/proxy/SystemTestDataProxy;
.super Landroid/content/ContentProvider;
.source ""


# static fields
.field public static final f:Ljava/lang/String;

.field public static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field public static h:Ljava/lang/Long;


# instance fields
.field public a:Ljava/lang/Class;

.field public b:Ldalvik/system/DexClassLoader;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/otest/proxy/SystemTestDataProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/otest/proxy/SystemTestDataProxy;->f:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/otest/proxy/SystemTestDataProxy;->g:Ljava/util/Map;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/otest/proxy/SystemTestDataProxy;->h:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/otest/proxy/SystemTestDataProxy;->a:Ljava/lang/Class;

    iput-object v0, p0, Lcom/otest/proxy/SystemTestDataProxy;->b:Ldalvik/system/DexClassLoader;

    iput-object v0, p0, Lcom/otest/proxy/SystemTestDataProxy;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/otest/proxy/SystemTestDataProxy;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 6

    const-string v0, "dexFileName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dexFilePath"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v3, "teststub"

    invoke-static {v1, v2, v3}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_32

    if-nez v0, :cond_2d

    goto :goto_32

    :cond_2d
    invoke-static {p1, v2, v0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_32
    :goto_32
    iget-object p1, p0, Lcom/otest/proxy/SystemTestDataProxy;->d:Ljava/lang/String;

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3f

    iget-object p0, p0, Lcom/otest/proxy/SystemTestDataProxy;->d:Ljava/lang/String;

    return-object p0

    :cond_3f
    const-string p0, "TestStub.dex"

    invoke-static {v1, v2, p0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 10

    sget-object v0, Lk2/c;->b:Lk2/c;

    if-nez v0, :cond_17

    const-class v0, Lk2/c;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lk2/c;->b:Lk2/c;

    if-nez v1, :cond_12

    new-instance v1, Lk2/c;

    invoke-direct {v1}, Lk2/c;-><init>()V

    sput-object v1, Lk2/c;->b:Lk2/c;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object v0, Lk2/c;->b:Lk2/c;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "call:ContentProviderClient is null:"

    const/4 v2, 0x3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v3, 0x0

    :try_start_28
    const-string v4, "Key_Method_Name"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lh2/a;->valueOf(Ljava/lang/String;)Lh2/a;

    move-result-object v4

    const-string v5, "Key_Authority"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_5c

    const/4 v1, 0x1

    if-ne v6, v1, :cond_45

    invoke-virtual {v0, p1, p2, p0}, Lk2/c;->b(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/ContentResolver;)V

    goto :goto_a5

    :cond_45
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MethodName Unexpected value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5c
    invoke-virtual {p0, v5}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v3

    if-nez v3, :cond_8c

    sget-object p0, Lk2/c;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2, v2}, Lg2/a;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lg2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    goto :goto_a5

    :cond_8c
    const-string p0, "Key_Call_Method_name"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Key_Arg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Key_Extras"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v3, v5, p0, v0, p1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p2, p0}, Lg2/a;->d(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_a5} :catch_aa
    .catchall {:try_start_28 .. :try_end_a5} :catchall_a8

    :goto_a5
    if-eqz v3, :cond_b6

    goto :goto_b3

    :catchall_a8
    move-exception p0

    goto :goto_b7

    :catch_aa
    move-exception p0

    :try_start_ab
    invoke-static {p2, v2}, Lg2/a;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;

    invoke-static {p2, p0}, Lg2/a;->c(Landroid/os/Bundle;Ljava/lang/Exception;)Landroid/os/Bundle;
    :try_end_b1
    .catchall {:try_start_ab .. :try_end_b1} :catchall_a8

    if-eqz v3, :cond_b6

    :goto_b3
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V

    :cond_b6
    return-void

    :goto_b7
    if-eqz v3, :cond_bc

    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V

    :cond_bc
    throw p0
.end method

.method public final c(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 10

    sget-object v0, Lk2/d;->a:Lk2/d;

    if-nez v0, :cond_17

    const-class v0, Lk2/d;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lk2/d;->a:Lk2/d;

    if-nez v1, :cond_12

    new-instance v1, Lk2/d;

    invoke-direct {v1}, Lk2/d;-><init>()V

    sput-object v1, Lk2/d;->a:Lk2/d;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object v0, Lk2/d;->a:Lk2/d;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_20
    const-string v0, "Key_Url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Key_Mode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Key_Method_Name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lh2/b;->valueOf(Ljava/lang/String;)Lh2/b;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "Key_Prefs_Key_Name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_4d} :catch_f6

    const-string v5, "Key_Prefs_Default_Value"

    const-string v6, "Key_Prefs_Key_Value"

    packed-switch v4, :pswitch_data_100

    :try_start_54
    new-instance p0, Ljava/lang/IllegalStateException;

    goto/16 :goto_e1

    :pswitch_58  #0xa
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-interface {v0, v3, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_dd

    :pswitch_64  #0x9
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    invoke-interface {v0, v3, p0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_dd

    :pswitch_70  #0x8
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-interface {v0, v3, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_dd

    :pswitch_7b  #0x7
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, v3, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_dd

    :pswitch_86  #0x6
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v3, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_dd

    :pswitch_91  #0x5
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p0, v3, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v2, v6, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_dd

    :pswitch_9d  #0x4
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    invoke-interface {p0, v3, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-virtual {v2, v6, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_dd

    :pswitch_a9  #0x3
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-interface {p0, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    invoke-virtual {v2, v6, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_dd

    :pswitch_b5  #0x2
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, v3, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v2, v6, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_dd

    :pswitch_c1  #0x1
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v3, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v6, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_dd

    :pswitch_cd  #0x0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v6, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_dd
    invoke-static {p2, v2}, Lg2/a;->d(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_fe

    :goto_e1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MethodName Unexpected value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_f6} :catch_f6

    :catch_f6
    move-exception p0

    const/4 p1, 0x2

    invoke-static {p2, p1}, Lg2/a;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;

    invoke-static {p2, p0}, Lg2/a;->c(Landroid/os/Bundle;Ljava/lang/Exception;)Landroid/os/Bundle;

    :goto_fe
    return-void

    nop

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_cd  #00000000
        :pswitch_c1  #00000001
        :pswitch_b5  #00000002
        :pswitch_a9  #00000003
        :pswitch_9d  #00000004
        :pswitch_91  #00000005
        :pswitch_86  #00000006
        :pswitch_7b  #00000007
        :pswitch_70  #00000008
        :pswitch_64  #00000009
        :pswitch_58  #0000000a
    .end packed-switch
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_5
    sget-object v1, Lcom/otest/proxy/SystemTestDataProxy;->f:Ljava/lang/String;

    const-string v2, "call:method=%s,  arg=%s,  extras=%s"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v6, 0x1

    aput-object p2, v4, v6

    const/4 v7, 0x2

    aput-object p3, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_25

    invoke-static {v0, v6}, Lg2/a;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_22

    return-object v0

    :catch_22
    move-exception p0

    goto/16 :goto_d3

    :cond_25
    :try_start_25
    invoke-static {p1}, Lj/b;->com$otest$proxy$common$ProviderMethodName$s$valueOf(Ljava/lang/String;)I

    move-result v1
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_29} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_29} :catch_22

    goto :goto_42

    :catch_2a
    move-exception v1

    :try_start_2b
    sget-object v2, Lcom/otest/proxy/SystemTestDataProxy;->f:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "call:methodStr IllegalArgumentException:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v5

    :goto_42
    if-nez v1, :cond_4f

    const/16 p0, 0x8

    invoke-static {v0, p0}, Lg2/a;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;

    const-string p0, "method name string is illegal"

    invoke-static {v0, p0}, Lg2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    return-object v0

    :cond_4f
    invoke-static {v1}, Lj/b;->f(I)I

    move-result v1
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_53} :catch_22

    const-string v2, "exceptionHandle exception"

    packed-switch v1, :pswitch_data_f2

    :try_start_58
    sget-object p0, Lcom/otest/proxy/SystemTestDataProxy;->f:Ljava/lang/String;

    goto :goto_c1

    :pswitch_5b  #0xa
    sget-object p2, Lcom/otest/proxy/SystemTestDataProxy;->f:Ljava/lang/String;

    const-string p3, "testDebug enter"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_62} :catch_22

    :try_start_62
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lk2/b;->c(Landroid/content/Context;)Lk2/b;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, p0}, Lg2/a;->d(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_71} :catch_73

    goto/16 :goto_f1

    :catch_73
    move-exception p0

    :try_start_74
    invoke-static {v0, p0}, Lg2/a;->c(Landroid/os/Bundle;Ljava/lang/Exception;)Landroid/os/Bundle;

    invoke-static {v0, v2}, Lg2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    goto/16 :goto_f1

    :pswitch_7c  #0x9
    invoke-virtual {p0, p3, v0}, Lcom/otest/proxy/SystemTestDataProxy;->i(Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto/16 :goto_f1

    :pswitch_81  #0x8
    invoke-virtual {p0, p3, v0}, Lcom/otest/proxy/SystemTestDataProxy;->f(Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto/16 :goto_f1

    :pswitch_86  #0x7
    invoke-virtual {p0, v0}, Lcom/otest/proxy/SystemTestDataProxy;->d(Landroid/os/Bundle;)Z

    goto :goto_f1

    :pswitch_8a  #0x6
    invoke-virtual {p0, p3, v0}, Lcom/otest/proxy/SystemTestDataProxy;->h(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    goto :goto_f1

    :pswitch_8e  #0x5
    invoke-virtual {p0, p3, v0}, Lcom/otest/proxy/SystemTestDataProxy;->b(Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_f1

    :pswitch_92  #0x4
    invoke-virtual {p0, p3, v0}, Lcom/otest/proxy/SystemTestDataProxy;->c(Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_f1

    :pswitch_96  #0x3
    invoke-virtual {p0, p3, v0}, Lcom/otest/proxy/SystemTestDataProxy;->k(Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_f1

    :pswitch_9a  #0x2
    sget-object p2, Lcom/otest/proxy/SystemTestDataProxy;->f:Ljava/lang/String;

    const-string p3, "exceptionHandle enter"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_a1} :catch_22

    :try_start_a1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lk2/b;->c(Landroid/content/Context;)Lk2/b;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, p0}, Lg2/a;->d(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_b0} :catch_b1

    goto :goto_f1

    :catch_b1
    move-exception p0

    :try_start_b2
    invoke-static {v0, p0}, Lg2/a;->c(Landroid/os/Bundle;Ljava/lang/Exception;)Landroid/os/Bundle;

    invoke-static {v0, v2}, Lg2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    goto :goto_f1

    :pswitch_b9  #0x1
    invoke-virtual {p0, p3, v0}, Lcom/otest/proxy/SystemTestDataProxy;->e(Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_f1

    :pswitch_bd  #0x0
    invoke-virtual {p0, p3, v0}, Lcom/otest/proxy/SystemTestDataProxy;->g(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    goto :goto_f1

    :goto_c1
    const-string v1, "enter default :method=%s,  arg=%s,  extras=%s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    aput-object p3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_d2} :catch_22

    goto :goto_f1

    :goto_d3
    sget-object p2, Lcom/otest/proxy/SystemTestDataProxy;->f:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown exception:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0xf

    invoke-static {v0, p1}, Lg2/a;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;

    invoke-static {v0, p0}, Lg2/a;->c(Landroid/os/Bundle;Ljava/lang/Exception;)Landroid/os/Bundle;

    :goto_f1
    return-object v0

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_bd  #00000000
        :pswitch_b9  #00000001
        :pswitch_9a  #00000002
        :pswitch_96  #00000003
        :pswitch_92  #00000004
        :pswitch_8e  #00000005
        :pswitch_8a  #00000006
        :pswitch_86  #00000007
        :pswitch_81  #00000008
        :pswitch_7c  #00000009
        :pswitch_5b  #0000000a
    .end packed-switch
.end method

.method public final d(Landroid/os/Bundle;)Z
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, v0}, Lg2/a;->d(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    const-string p1, "version"

    const-string v1, "2.2.0"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/otest/proxy/SystemTestDataProxy;->c:Ljava/lang/Object;

    const-string v1, "status"

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/otest/proxy/SystemTestDataProxy;->a:Ljava/lang/Class;

    if-eqz p1, :cond_24

    iget-object p0, p0, Lcom/otest/proxy/SystemTestDataProxy;->b:Ldalvik/system/DexClassLoader;

    if-eqz p0, :cond_24

    const-string p0, "success"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_24
    const-string p0, "fail"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public final e(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 10

    sget-object v0, Lk2/e;->a:Lk2/e;

    if-nez v0, :cond_17

    const-class v0, Lk2/e;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lk2/e;->a:Lk2/e;

    if-nez v1, :cond_12

    new-instance v1, Lk2/e;

    invoke-direct {v1}, Lk2/e;-><init>()V

    sput-object v1, Lk2/e;->a:Lk2/e;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object v0, Lk2/e;->a:Lk2/e;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xe

    const/16 v1, 0xd

    if-eqz p0, :cond_ac

    :try_start_26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "resTypeAndName"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_94

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_39

    goto :goto_94

    :cond_39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_5c

    invoke-static {p2, v1}, Lg2/a;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;

    goto :goto_b1

    :cond_5c
    const-string v3, "resMethodName"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_68

    invoke-static {p2, v0}, Lg2/a;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;

    goto :goto_b1

    :cond_68
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x8b553a

    if-eq v5, v6, :cond_78

    goto :goto_81

    :cond_78
    const-string v5, "GET_STRING"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_81

    const/4 v4, 0x0

    :cond_81
    :goto_81
    if-eqz v4, :cond_87

    invoke-static {p2, v0}, Lg2/a;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;

    goto :goto_b1

    :cond_87
    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "resValue"

    invoke-virtual {v3, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v3}, Lg2/a;->d(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_b1

    :cond_94
    :goto_94
    const/16 p0, 0xc

    invoke-static {p2, p0}, Lg2/a;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;
    :try_end_99
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_26 .. :try_end_99} :catch_a4
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_99} :catch_9a

    goto :goto_b1

    :catch_9a
    move-exception p0

    const/16 p1, 0xf

    invoke-static {p2, p1}, Lg2/a;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;

    invoke-static {p2, p0}, Lg2/a;->c(Landroid/os/Bundle;Ljava/lang/Exception;)Landroid/os/Bundle;

    goto :goto_b1

    :catch_a4
    move-exception p0

    invoke-static {p2, v1}, Lg2/a;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;

    invoke-static {p2, p0}, Lg2/a;->c(Landroid/os/Bundle;Ljava/lang/Exception;)Landroid/os/Bundle;

    goto :goto_b1

    :cond_ac
    const/16 p0, 0xa

    invoke-static {p2, p0}, Lg2/a;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;

    :goto_b1
    return-void
.end method

.method public final f(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 4

    sget-object p2, Lk2/a;->a:Lk2/a;

    if-nez p2, :cond_17

    const-class p2, Lk2/a;

    monitor-enter p2

    :try_start_7
    sget-object v0, Lk2/a;->a:Lk2/a;

    if-nez v0, :cond_12

    new-instance v0, Lk2/a;

    invoke-direct {v0}, Lk2/a;-><init>()V

    sput-object v0, Lk2/a;->a:Lk2/a;

    :cond_12
    monitor-exit p2

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit p2
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p2, Lk2/a;->a:Lk2/a;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hotUpdateDexFilePath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3b

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3b

    :try_start_33
    invoke-virtual {p2, p0, p1}, Lk2/a;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public final g(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 11

    const-string v0, "method invoke illegalAccessException:"

    invoke-virtual {p0, p2}, Lcom/otest/proxy/SystemTestDataProxy;->d(Landroid/os/Bundle;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1d

    invoke-virtual {p0, p1, p2}, Lcom/otest/proxy/SystemTestDataProxy;->h(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1d

    const-string p0, "invokeMethod:auto loadDex Fail"

    invoke-static {p2, p0}, Lg2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    return v2

    :cond_1d
    :try_start_1d
    const-string v1, "methodName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2a

    const/4 p0, 0x5

    invoke-static {p2, p0}, Lg2/a;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;

    return v2

    :cond_2a
    const-string v3, "methodParams"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v3, p0, Lcom/otest/proxy/SystemTestDataProxy;->a:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    const-class v6, Landroid/os/Bundle;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v3, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v5, p0, Lcom/otest/proxy/SystemTestDataProxy;->c:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    aput-object p0, v4, v2

    aput-object p1, v4, v7

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/otest/proxy/SystemTestDataProxy;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke %s result:"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_78

    check-cast p0, Landroid/os/Bundle;

    invoke-static {p2, p0}, Lg2/a;->d(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    return v7

    :cond_78
    const/4 p0, 0x7

    invoke-static {p2, p0}, Lg2/a;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;

    invoke-static {p2, v1}, Lg2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_7f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_7f} :catch_b1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_7f} :catch_a2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1d .. :try_end_7f} :catch_91
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_7f} :catch_80

    return v2

    :catch_80
    move-exception p0

    sget-object p1, Lcom/otest/proxy/SystemTestDataProxy;->f:Ljava/lang/String;

    const-string v0, "method invoke exception:"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p2, p0}, Lg2/a;->c(Landroid/os/Bundle;Ljava/lang/Exception;)Landroid/os/Bundle;

    const-string p0, "invoke exception"

    invoke-static {p2, p0}, Lg2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    return v2

    :catch_91
    move-exception p0

    sget-object p1, Lcom/otest/proxy/SystemTestDataProxy;->f:Ljava/lang/String;

    const-string v0, "method invoke invocationTargetException:"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p2, p0}, Lg2/a;->c(Landroid/os/Bundle;Ljava/lang/Exception;)Landroid/os/Bundle;

    const-string p0, "invocationTargetException exception"

    invoke-static {p2, p0}, Lg2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    return v2

    :catch_a2
    move-exception p0

    sget-object p1, Lcom/otest/proxy/SystemTestDataProxy;->f:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p2, p0}, Lg2/a;->c(Landroid/os/Bundle;Ljava/lang/Exception;)Landroid/os/Bundle;

    const-string p0, "illegalArgumentException exception"

    invoke-static {p2, p0}, Lg2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    return v2

    :catch_b1
    move-exception p0

    sget-object p1, Lcom/otest/proxy/SystemTestDataProxy;->f:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p2, p0}, Lg2/a;->c(Landroid/os/Bundle;Ljava/lang/Exception;)Landroid/os/Bundle;

    const-string p0, "illegalAccessException exception"

    invoke-static {p2, p0}, Lg2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    return v2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 13

    invoke-virtual {p0, p1}, Lcom/otest/proxy/SystemTestDataProxy;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "subServiceClassName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_3e

    :cond_13
    iget-object v1, p0, Lcom/otest/proxy/SystemTestDataProxy;->e:Ljava/lang/String;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/otest/proxy/SystemTestDataProxy;->e:Ljava/lang/String;

    goto :goto_3e

    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "TestDataProviderServiceImpl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3e
    sget-object v2, Lcom/otest/proxy/SystemTestDataProxy;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dynamicLoadDex path07251859:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_8d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "file no exists:path :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    invoke-static {p2, p0}, Lg2/a;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "filePath="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lg2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    return v5

    :cond_8d
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_9e

    invoke-virtual {v3}, Ljava/io/File;->setReadOnly()Z

    move-result v4

    if-nez v4, :cond_9e

    const-string v4, "dexFile.setReadOnly() == false"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9e
    new-instance v4, Ldalvik/system/DexClassLoader;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v4, v3, v0, v0, v6}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v4, p0, Lcom/otest/proxy/SystemTestDataProxy;->b:Ldalvik/system/DexClassLoader;

    :try_start_b1
    invoke-virtual {v4, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/otest/proxy/SystemTestDataProxy;->a:Ljava/lang/Class;

    if-nez v3, :cond_d2

    const/4 p0, 0x6

    invoke-static {p2, p0}, Lg2/a;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "serviceClass="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lg2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    return v5

    :cond_d2
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/otest/proxy/SystemTestDataProxy;->c:Ljava/lang/Object;

    iget-object v3, p0, Lcom/otest/proxy/SystemTestDataProxy;->a:Ljava/lang/Class;

    const-string v4, "start"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v5

    const-class v8, Landroid/os/Bundle;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v3, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lcom/otest/proxy/SystemTestDataProxy;->c:Ljava/lang/Object;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    aput-object v7, v6, v5

    aput-object p1, v6, v9

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_11c

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p2, p1}, Lg2/a;->d(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    iput-object v0, p0, Lcom/otest/proxy/SystemTestDataProxy;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/otest/proxy/SystemTestDataProxy;->e:Ljava/lang/String;

    return v9

    :cond_11c
    const/4 p0, 0x7

    invoke-static {p2, p0}, Lg2/a;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_120} :catch_121

    return v5

    :catch_121
    move-exception p0

    sget-object p1, Lcom/otest/proxy/SystemTestDataProxy;->f:Ljava/lang/String;

    const-string v0, "subServer start exception:"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p2, p0}, Lg2/a;->c(Landroid/os/Bundle;Ljava/lang/Exception;)Landroid/os/Bundle;

    return v5
.end method

.method public final i(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 10

    const-string v0, " fileAllCount:"

    const-string v1, "postDexFile params is null: index:"

    sget-object v2, Lcom/otest/proxy/SystemTestDataProxy;->f:Ljava/lang/String;

    const-string v3, "postDexFile enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/otest/proxy/SystemTestDataProxy;->g:Ljava/util/Map;

    if-nez v3, :cond_16

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/otest/proxy/SystemTestDataProxy;->g:Ljava/util/Map;

    :cond_16
    :try_start_16
    const-string v3, "byteArrayIndex"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "fileByteCount"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "fileByteArray"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    if-eqz v3, :cond_82

    if-eqz v5, :cond_82

    if-nez v4, :cond_37

    goto :goto_82

    :cond_37
    sget-object v0, Lcom/otest/proxy/SystemTestDataProxy;->g:Ljava/util/Map;

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/otest/proxy/SystemTestDataProxy;->h:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    array-length v3, v5

    int-to-long v5, v3

    add-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/otest/proxy/SystemTestDataProxy;->h:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-ltz v0, :cond_79

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dexFileByteCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/otest/proxy/SystemTestDataProxy;->h:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "   fileAllCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/otest/proxy/SystemTestDataProxy;->j(Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_81

    :cond_79
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p2, p0}, Lg2/a;->d(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    :goto_81
    return-void

    :cond_82
    :goto_82
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    invoke-static {p2, p0}, Lg2/a;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lg2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_b6} :catch_b7

    return-void

    :catch_b7
    move-exception p0

    sget-object p1, Lcom/otest/proxy/SystemTestDataProxy;->f:Ljava/lang/String;

    const-string v0, "postDexFile exception:"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p2, p0}, Lg2/a;->c(Landroid/os/Bundle;Ljava/lang/Exception;)Landroid/os/Bundle;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lg2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    return-void
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final j(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 9

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/otest/proxy/SystemTestDataProxy;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_1a
    const/4 p0, 0x0

    const-wide/16 v1, 0x1

    :try_start_1d
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_27
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Lcom/otest/proxy/SystemTestDataProxy;->g:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-ge v4, v5, :cond_4a

    sget-object v4, Lcom/otest/proxy/SystemTestDataProxy;->g:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v5, v4

    invoke-virtual {p1, v4, v0, v5}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_27

    :cond_4a
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p2, p1}, Lg2/a;->d(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_58} :catch_5b
    .catchall {:try_start_1d .. :try_end_58} :catchall_59

    goto :goto_62

    :catchall_59
    move-exception p1

    goto :goto_70

    :catch_5b
    move-exception p1

    :try_start_5c
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p2, p1}, Lg2/a;->c(Landroid/os/Bundle;Ljava/lang/Exception;)Landroid/os/Bundle;
    :try_end_62
    .catchall {:try_start_5c .. :try_end_62} :catchall_59

    :goto_62
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sput-object p1, Lcom/otest/proxy/SystemTestDataProxy;->h:Ljava/lang/Long;

    sget-object p1, Lcom/otest/proxy/SystemTestDataProxy;->g:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    sput-object p0, Lcom/otest/proxy/SystemTestDataProxy;->g:Ljava/util/Map;

    return-void

    :goto_70
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    sput-object p2, Lcom/otest/proxy/SystemTestDataProxy;->h:Ljava/lang/Long;

    sget-object p2, Lcom/otest/proxy/SystemTestDataProxy;->g:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    sput-object p0, Lcom/otest/proxy/SystemTestDataProxy;->g:Ljava/util/Map;

    throw p1
.end method

.method public final k(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 5

    sget-object v0, Lcom/otest/proxy/SystemTestDataProxy;->f:Ljava/lang/String;

    const-string v1, "testLogObserverHandle enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    sget-object p0, Lk2/f;->b:Lk2/f;

    if-nez p0, :cond_22

    const-class p0, Lk2/f;

    monitor-enter p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_26

    :try_start_11
    sget-object v0, Lk2/f;->b:Lk2/f;

    if-nez v0, :cond_1c

    new-instance v0, Lk2/f;

    invoke-direct {v0}, Lk2/f;-><init>()V

    sput-object v0, Lk2/f;->b:Lk2/f;

    :cond_1c
    monitor-exit p0

    move-object p0, v0

    goto :goto_22

    :catchall_1f
    move-exception p1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_1f

    :try_start_21
    throw p1

    :cond_22
    :goto_22
    invoke-virtual {p0, p1, p2}, Lk2/f;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_26

    goto :goto_2f

    :catch_26
    move-exception p0

    invoke-static {p2, p0}, Lg2/a;->c(Landroid/os/Bundle;Ljava/lang/Exception;)Landroid/os/Bundle;

    const-string p0, "testLogObserverHandle exception"

    invoke-static {p2, p0}, Lg2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    :goto_2f
    return-void
.end method

.method public onCreate()Z
    .registers 2

    sget-object p0, Lcom/otest/proxy/SystemTestDataProxy;->f:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method
