.class Lcom/oplus/providers/AppSettings$NameValueCache;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/providers/AppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameValueCache"
.end annotation


# static fields
.field private static final CALL_METHOD_MAKE_DEFAULT_KEY:Ljava/lang/String; = "_make_default"

.field private static final NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final SELECT_VALUE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mCallGetCommand:Ljava/lang/String;

.field private final mCallSetCommand:Ljava/lang/String;

.field private final mProviderHolder:Lcom/oplus/providers/AppSettings$ContentProviderHolder;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/providers/AppSettings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/providers/AppSettings$ContentProviderHolder;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/providers/AppSettings$NameValueCache;->mUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/oplus/providers/AppSettings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/providers/AppSettings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/providers/AppSettings$NameValueCache;->mProviderHolder:Lcom/oplus/providers/AppSettings$ContentProviderHolder;

    return-void
.end method


# virtual methods
.method public getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .registers 28
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    const-string v5, " ,due to cursor is null"

    const-string v6, "Can\'t get key "

    const-string v7, " from "

    iget-object v0, v1, Lcom/oplus/providers/AppSettings$NameValueCache;->mProviderHolder:Lcom/oplus/providers/AppSettings$ContentProviderHolder;

    invoke-virtual {v0, v2, v4}, Lcom/oplus/providers/AppSettings$ContentProviderHolder;->getProviderForUser(Landroid/content/ContentResolver;I)Landroid/content/ContentProviderClient;

    move-result-object v14

    const-string v15, "AppSettings"

    const/16 v16, 0x0

    if-nez v14, :cond_3b

    :try_start_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get provider for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/oplus/providers/AppSettings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ,due to ContentProviderClient == null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_1a .. :try_end_35} :catchall_9c

    if-eqz v14, :cond_3a

    invoke-virtual {v14}, Landroid/content/ContentProviderClient;->close()V

    :cond_3a
    return-object v16

    :cond_3b
    const/4 v13, 0x1

    const/4 v12, 0x0

    :try_start_3d
    iget-object v9, v1, Lcom/oplus/providers/AppSettings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v10, Lcom/oplus/providers/AppSettings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    const-string v11, "name=?"

    new-array v0, v13, [Ljava/lang/String;

    aput-object v3, v0, v12
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_47} :catch_9f
    .catchall {:try_start_3d .. :try_end_47} :catchall_9c

    const/16 v17, 0x0

    move-object v8, v14

    move v2, v12

    move-object v12, v0

    move-object/from16 v13, v17

    :try_start_4e
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_52} :catch_a0
    .catchall {:try_start_4e .. :try_end_52} :catchall_9c

    if-nez v8, :cond_7a

    :try_start_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/oplus/providers/AppSettings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_54 .. :try_end_71} :catchall_8e

    if-eqz v8, :cond_76

    :try_start_73
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_76} :catch_a0
    .catchall {:try_start_73 .. :try_end_76} :catchall_9c

    :cond_76
    invoke-virtual {v14}, Landroid/content/ContentProviderClient;->close()V

    return-object v16

    :cond_7a
    :try_start_7a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_8e

    goto :goto_87

    :cond_85
    move-object/from16 v0, v16

    :goto_87
    :try_start_87
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_8a} :catch_a0
    .catchall {:try_start_87 .. :try_end_8a} :catchall_9c

    invoke-virtual {v14}, Landroid/content/ContentProviderClient;->close()V

    return-object v0

    :catchall_8e
    move-exception v0

    move-object v9, v0

    if-eqz v8, :cond_9b

    :try_start_92
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_96

    goto :goto_9b

    :catchall_96
    move-exception v0

    move-object v8, v0

    :try_start_98
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9b
    :goto_9b
    throw v9
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_9c} :catch_a0
    .catchall {:try_start_98 .. :try_end_9c} :catchall_9c

    :catchall_9c
    move-exception v0

    goto/16 :goto_171

    :catch_9f
    move v2, v12

    :catch_a0
    :try_start_a0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "query RemoteException Can\'t get key "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/oplus/providers/AppSettings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catchall {:try_start_a0 .. :try_end_bc} :catchall_9c

    :try_start_bc
    iget-object v0, v1, Lcom/oplus/providers/AppSettings$NameValueCache;->mProviderHolder:Lcom/oplus/providers/AppSettings$ContentProviderHolder;

    move v8, v2

    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v4}, Lcom/oplus/providers/AppSettings$ContentProviderHolder;->reacquireProviderForUser(Landroid/content/ContentResolver;I)Landroid/content/ContentProviderClient;

    move-result-object v14

    if-nez v14, :cond_d2

    const-string v0, "retry reacquireProviderForUser failed"

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_cc} :catch_133
    .catchall {:try_start_bc .. :try_end_cc} :catchall_9c

    if-eqz v14, :cond_d1

    invoke-virtual {v14}, Landroid/content/ContentProviderClient;->close()V

    :cond_d1
    return-object v16

    :cond_d2
    :try_start_d2
    iget-object v0, v1, Lcom/oplus/providers/AppSettings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v20, Lcom/oplus/providers/AppSettings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    const-string v21, "name=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v3, v2, v8

    const/16 v23, 0x0

    move-object/from16 v18, v14

    move-object/from16 v19, v0

    move-object/from16 v22, v2

    invoke-virtual/range {v18 .. v23}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_e9
    .catch Landroid/os/RemoteException; {:try_start_d2 .. :try_end_e9} :catch_133
    .catchall {:try_start_d2 .. :try_end_e9} :catchall_9c

    if-nez v2, :cond_111

    :try_start_eb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/oplus/providers/AppSettings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_108
    .catchall {:try_start_eb .. :try_end_108} :catchall_125

    if-eqz v2, :cond_10d

    :try_start_10a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_10d
    .catch Landroid/os/RemoteException; {:try_start_10a .. :try_end_10d} :catch_133
    .catchall {:try_start_10a .. :try_end_10d} :catchall_9c

    :cond_10d
    invoke-virtual {v14}, Landroid/content/ContentProviderClient;->close()V

    return-object v16

    :cond_111
    :try_start_111
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_11c

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_11b
    .catchall {:try_start_111 .. :try_end_11b} :catchall_125

    goto :goto_11e

    :cond_11c
    move-object/from16 v0, v16

    :goto_11e
    :try_start_11e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_121
    .catch Landroid/os/RemoteException; {:try_start_11e .. :try_end_121} :catch_133
    .catchall {:try_start_11e .. :try_end_121} :catchall_9c

    invoke-virtual {v14}, Landroid/content/ContentProviderClient;->close()V

    return-object v0

    :catchall_125
    move-exception v0

    move-object v4, v0

    if-eqz v2, :cond_132

    :try_start_129
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_12c
    .catchall {:try_start_129 .. :try_end_12c} :catchall_12d

    goto :goto_132

    :catchall_12d
    move-exception v0

    move-object v2, v0

    :try_start_12f
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_132
    :goto_132
    throw v4
    :try_end_133
    .catch Landroid/os/RemoteException; {:try_start_12f .. :try_end_133} :catch_133
    .catchall {:try_start_12f .. :try_end_133} :catchall_9c

    :catch_133
    :try_start_133
    iget-object v0, v1, Lcom/oplus/providers/AppSettings$NameValueCache;->mCallGetCommand:Ljava/lang/String;
    :try_end_135
    .catchall {:try_start_133 .. :try_end_135} :catchall_9c

    if-eqz v0, :cond_16b

    :try_start_137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v1, Lcom/oplus/providers/AppSettings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    invoke-virtual {v14, v2, v3, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_16b

    const-string v2, "value"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14a
    .catch Landroid/os/RemoteException; {:try_start_137 .. :try_end_14a} :catch_14e
    .catchall {:try_start_137 .. :try_end_14a} :catchall_9c

    invoke-virtual {v14}, Landroid/content/ContentProviderClient;->close()V

    return-object v0

    :catch_14e
    move-exception v0

    :try_start_14f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call RemoteException Can\'t get key "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/oplus/providers/AppSettings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16b
    .catchall {:try_start_14f .. :try_end_16b} :catchall_9c

    :cond_16b
    if-eqz v14, :cond_170

    invoke-virtual {v14}, Landroid/content/ContentProviderClient;->close()V

    :cond_170
    return-object v16

    :goto_171
    if-eqz v14, :cond_176

    invoke-virtual {v14}, Landroid/content/ContentProviderClient;->close()V

    :cond_176
    throw v0
.end method

.method public putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .registers 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/providers/AppSettings$NameValueCache;->mProviderHolder:Lcom/oplus/providers/AppSettings$ContentProviderHolder;

    invoke-virtual {v0, p1, p6}, Lcom/oplus/providers/AppSettings$ContentProviderHolder;->getProviderForUser(Landroid/content/ContentResolver;I)Landroid/content/ContentProviderClient;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "AppSettings"

    if-nez v0, :cond_23

    const-string p1, "Can\'t get provider for "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/providers/AppSettings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " ,due to ContentProviderClient == null"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_23
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "name"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "value"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    :try_start_33
    iget-object v6, p0, Lcom/oplus/providers/AppSettings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v6, v3}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39

    return v5

    :catch_39
    const-string v6, "insert Can\'t set key "

    const-string v7, " in "

    invoke-static {v6, p2, v7}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/oplus/providers/AppSettings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_4d
    iget-object v6, p0, Lcom/oplus/providers/AppSettings$NameValueCache;->mProviderHolder:Lcom/oplus/providers/AppSettings$ContentProviderHolder;

    invoke-virtual {v6, p1, p6}, Lcom/oplus/providers/AppSettings$ContentProviderHolder;->reacquireProviderForUser(Landroid/content/ContentResolver;I)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-nez v0, :cond_5b

    const-string p1, "retry reacquireProviderForUser failed"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5b
    iget-object p1, p0, Lcom/oplus/providers/AppSettings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, v3}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_60} :catch_61

    return v5

    :catch_61
    :try_start_61
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_70

    const-string p3, "_tag"

    invoke-virtual {p1, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_70
    if-eqz p5, :cond_77

    const-string p3, "_make_default"

    invoke-virtual {p1, p3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_77
    iget-object p3, p0, Lcom/oplus/providers/AppSettings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    invoke-virtual {v0, p3, p2, p1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_7c} :catch_7d

    return v5

    :catch_7d
    const-string p1, "RemoteException call Can\'t set key "

    invoke-static {p1, p2, v7}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/providers/AppSettings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
