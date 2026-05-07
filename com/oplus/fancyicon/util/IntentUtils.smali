.class public Lcom/oplus/fancyicon/util/IntentUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CAMERA_PKG:Ljava/lang/String;

.field public static final CHARS:[C

.field public static final C_OS:Ljava/lang/String;

.field public static final DIAL_PKG:Ljava/lang/String; = "com.android.contacts"

.field public static final GALLERY_PKG:Ljava/lang/String;

.field private static final GOOGLE_ACTION:Ljava/lang/String; = "android.intent.action.DIAL"

.field private static final GOOGLE_DIAL:Ljava/lang/String; = "com.google.android.dialer"

.field private static final GOOGLE_DIAL_CLASS:Ljava/lang/String; = "com.google.android.dialer.extensions.GoogleDialtactsActivity"

.field private static final GOOGLE_MMS:Ljava/lang/String; = "com.google.android.apps.messaging"

.field private static final GOOGLE_MMS_CLASS:Ljava/lang/String; = "com.google.android.apps.messaging.ui.ConversationListActivity"

.field public static final MMS_PKG:Ljava/lang/String; = "com.android.mms"

.field public static final O:Ljava/lang/String;

.field public static final OP:Ljava/lang/String;

.field private static final OP_CAMERA_CLASS:Ljava/lang/String;

.field private static final OP_CAMERA_PKG:Ljava/lang/String;

.field public static final P:Ljava/lang/String;

.field private static final P_CAMERA_ACTION:Ljava/lang/String; = "android.intent.action.MAIN"

.field private static final P_CAMERA_CLASS:Ljava/lang/String;

.field private static final P_CAMERA_PKG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 17

    const/16 v0, 0x34

    new-array v0, v0, [C

    fill-array-data v0, :array_cc

    sput-object v0, Lcom/oplus/fancyicon/util/IntentUtils;->CHARS:[C

    const/4 v1, 0x4

    new-array v2, v1, [C

    const/16 v3, 0xe

    aget-char v4, v0, v3

    const/4 v5, 0x0

    aput-char v4, v2, v5

    const/16 v4, 0xf

    aget-char v6, v0, v4

    const/4 v7, 0x1

    aput-char v6, v2, v7

    aget-char v6, v0, v4

    const/4 v8, 0x2

    aput-char v6, v2, v8

    aget-char v6, v0, v3

    const/4 v9, 0x3

    aput-char v6, v2, v9

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oplus/fancyicon/util/IntentUtils;->O:Ljava/lang/String;

    const/4 v6, 0x7

    new-array v10, v6, [C

    aget-char v11, v0, v3

    aput-char v11, v10, v5

    const/16 v11, 0xd

    aget-char v11, v0, v11

    aput-char v11, v10, v7

    aget-char v11, v0, v1

    aput-char v11, v10, v8

    aget-char v11, v0, v4

    aput-char v11, v10, v9

    const/16 v11, 0xb

    aget-char v12, v0, v11

    aput-char v12, v10, v1

    const/16 v12, 0x14

    aget-char v13, v0, v12

    const/4 v14, 0x5

    aput-char v13, v10, v14

    const/16 v13, 0x12

    aget-char v15, v0, v13

    const/16 v16, 0x6

    aput-char v15, v10, v16

    invoke-static {v10}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/oplus/fancyicon/util/IntentUtils;->P:Ljava/lang/String;

    new-array v6, v6, [C

    aget-char v15, v0, v8

    aput-char v15, v6, v5

    aget-char v15, v0, v3

    aput-char v15, v6, v7

    aget-char v15, v0, v11

    aput-char v15, v6, v8

    aget-char v15, v0, v3

    aput-char v15, v6, v9

    const/16 v15, 0x11

    aget-char v15, v0, v15

    aput-char v15, v6, v1

    aget-char v15, v0, v3

    aput-char v15, v6, v14

    aget-char v15, v0, v13

    aput-char v15, v6, v16

    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/oplus/fancyicon/util/IntentUtils;->C_OS:Ljava/lang/String;

    new-array v14, v14, [C

    aget-char v3, v0, v3

    aput-char v3, v14, v5

    aget-char v3, v0, v4

    aput-char v3, v14, v7

    aget-char v3, v0, v11

    aput-char v3, v14, v8

    aget-char v3, v0, v12

    aput-char v3, v14, v9

    aget-char v0, v0, v13

    aput-char v0, v14, v1

    invoke-static {v14}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/fancyicon/util/IntentUtils;->OP:Ljava/lang/String;

    const-string v1, "com."

    const-string v3, ".camera"

    invoke-static {v1, v2, v3}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oplus/fancyicon/util/IntentUtils;->CAMERA_PKG:Ljava/lang/String;

    const-string v2, ".gallery3d"

    invoke-static {v1, v6, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oplus/fancyicon/util/IntentUtils;->GALLERY_PKG:Ljava/lang/String;

    invoke-static {v1, v10, v3}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oplus/fancyicon/util/IntentUtils;->P_CAMERA_PKG:Ljava/lang/String;

    const-string v2, ".camera.CameraActivity"

    invoke-static {v1, v10, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oplus/fancyicon/util/IntentUtils;->P_CAMERA_CLASS:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oplus/fancyicon/util/IntentUtils;->OP_CAMERA_PKG:Ljava/lang/String;

    const-string v2, ".camera.Camera"

    invoke-static {v1, v0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/fancyicon/util/IntentUtils;->OP_CAMERA_CLASS:Ljava/lang/String;

    return-void

    nop

    :array_cc
    .array-data 2
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compatUnUsableIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_17

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_13
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    :goto_17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "com.android.contacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {v0}, Lcom/oplus/fancyicon/util/IntentUtils;->createGoogleDialIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/fancyicon/util/IntentUtils;->isIntentUsable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_36

    return-object v0

    :cond_36
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.DIAL"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object p0

    :cond_48
    const-string v1, "com.android.mms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {v0}, Lcom/oplus/fancyicon/util/IntentUtils;->createGoogleMmsIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/fancyicon/util/IntentUtils;->isIntentUsable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_8b

    return-object v0

    :cond_61
    sget-object v1, Lcom/oplus/fancyicon/util/IntentUtils;->CAMERA_PKG:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {v0}, Lcom/oplus/fancyicon/util/IntentUtils;->createPCameraIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/fancyicon/util/IntentUtils;->isIntentUsable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_7a

    return-object v0

    :cond_7a
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {v0}, Lcom/oplus/fancyicon/util/IntentUtils;->createOPCameraIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/fancyicon/util/IntentUtils;->isIntentUsable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_8b

    return-object v0

    :cond_8b
    return-object p1
.end method

.method private static createGoogleDialIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4

    const-string v0, "android.intent.action.DIAL"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.dialer"

    const-string v2, "com.google.android.dialer.extensions.GoogleDialtactsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0
.end method

.method private static createGoogleMmsIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.apps.messaging"

    const-string v2, "com.google.android.apps.messaging.ui.ConversationListActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0
.end method

.method private static createOPCameraIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    sget-object v1, Lcom/oplus/fancyicon/util/IntentUtils;->OP_CAMERA_PKG:Ljava/lang/String;

    sget-object v2, Lcom/oplus/fancyicon/util/IntentUtils;->OP_CAMERA_CLASS:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0
.end method

.method private static createPCameraIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    sget-object v1, Lcom/oplus/fancyicon/util/IntentUtils;->P_CAMERA_PKG:Ljava/lang/String;

    sget-object v2, Lcom/oplus/fancyicon/util/IntentUtils;->P_CAMERA_CLASS:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0
.end method

.method public static isIntentUsable(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_15

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method
