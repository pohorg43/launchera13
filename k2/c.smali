.class public Lk2/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Lk2/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lk2/c;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk2/c;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lk2/c;->b:Lk2/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;[Ljava/lang/String;)Landroid/os/Bundle;
    .registers 7

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x0

    :goto_6
    array-length v1, p2

    if-ge v0, v1, :cond_45

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getType(I)I

    move-result v1

    aget-object v2, p2, v0

    if-eqz v1, :cond_3e

    const/4 v3, 0x1

    if-eq v1, v3, :cond_36

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2e

    const/4 v3, 0x3

    if-eq v1, v3, :cond_26

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1e

    goto :goto_42

    :cond_1e
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_42

    :cond_26
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    :cond_2e
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_42

    :cond_36
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_42

    :cond_3e
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_45
    return-object p0
.end method

.method public final b(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/ContentResolver;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "Key_Authority"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_85
    .catchall {:try_start_1 .. :try_end_f} :catchall_82

    if-nez v1, :cond_29

    const/4 v2, 0x3

    :try_start_12
    invoke-static {p2, v2}, Lg2/a;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doQuery:ContentProviderClient is null:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lg2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    :cond_29
    const-string v2, "Key_Projection"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v2, "Key_Selection"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "Key_SelectionArgs"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string v2, "Key_sortOrder"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p3

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_47} :catch_80
    .catchall {:try_start_12 .. :try_end_47} :catchall_9c

    if-eqz p1, :cond_72

    :try_start_49
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_57
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v0}, Lk2/c;->a(Landroid/database/Cursor;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_57

    :cond_69
    invoke-static {p2, p3}, Lg2/a;->d(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_6c} :catch_7d
    .catchall {:try_start_49 .. :try_end_6c} :catchall_7a

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    if-eqz v1, :cond_9b

    goto :goto_98

    :cond_72
    :try_start_72
    new-instance p0, Ljava/lang/Exception;

    const-string p3, "doQuery:query cursor is null"

    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7a} :catch_7d
    .catchall {:try_start_72 .. :try_end_7a} :catchall_7a

    :catchall_7a
    move-exception p0

    move-object v0, p1

    goto :goto_9d

    :catch_7d
    move-exception p0

    move-object v0, p1

    goto :goto_87

    :catch_80
    move-exception p0

    goto :goto_87

    :catchall_82
    move-exception p0

    move-object v1, v0

    goto :goto_9d

    :catch_85
    move-exception p0

    move-object v1, v0

    :goto_87
    :try_start_87
    sget-object p1, Lk2/c;->a:Ljava/lang/String;

    const-string p3, "doQuery"

    invoke-static {p1, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p2, p0}, Lg2/a;->c(Landroid/os/Bundle;Ljava/lang/Exception;)Landroid/os/Bundle;
    :try_end_91
    .catchall {:try_start_87 .. :try_end_91} :catchall_9c

    if-eqz v0, :cond_96

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_96
    if-eqz v1, :cond_9b

    :goto_98
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    :cond_9b
    return-void

    :catchall_9c
    move-exception p0

    :goto_9d
    if-eqz v0, :cond_a2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a2
    if-eqz v1, :cond_a7

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    :cond_a7
    throw p0
.end method
