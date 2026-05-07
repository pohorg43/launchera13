.class public final Lcom/android/launcher3/appedit/AppEditModelLoader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/appedit/AppEditModelLoader$ModelLoader;,
        Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderNormal;,
        Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderSmart;,
        Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

.field private static final MODIFIED:I = 0x1

.field private static final NOT_MODIFIED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AppEditModelLoader"

.field private static final sInstance$delegate:Ly2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly2/e<",
            "Lcom/android/launcher3/appedit/AppEditModelLoader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInit:Z

.field private mLoadNormal:Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderNormal;

.field private mLoadSmart:Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderSmart;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    sget-object v0, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion$sInstance$2;->INSTANCE:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion$sInstance$2;

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/appedit/AppEditModelLoader;->sInstance$delegate:Ly2/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderSmart;

    invoke-direct {v0}, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderSmart;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appedit/AppEditModelLoader;->mLoadSmart:Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderSmart;

    new-instance v0, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderNormal;

    invoke-direct {v0}, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderNormal;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appedit/AppEditModelLoader;->mLoadNormal:Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderNormal;

    return-void
.end method

.method public static final synthetic access$getSInstance$delegate$cp()Ly2/e;
    .registers 1

    sget-object v0, Lcom/android/launcher3/appedit/AppEditModelLoader;->sInstance$delegate:Ly2/e;

    return-object v0
.end method

.method public static final getInstance()Lcom/android/launcher3/appedit/AppEditModelLoader;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->getInstance()Lcom/android/launcher3/appedit/AppEditModelLoader;

    move-result-object v0

    return-object v0
.end method

.method private final updateSuffix(Ljava/lang/String;Lcom/android/launcher3/appedit/AppEditInfo;ILandroid/content/Context;I)V
    .registers 23

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    const-string v4, "AppEditModelLoader"

    const-string v5, "AppEdit"

    if-eqz v3, :cond_22

    const-string/jumbo v3, "updateSuffix: identifier "

    const-string v6, " myIdentifier "

    invoke-static {v3, v1, v6, v2}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    const-string v3, ""

    const-string/jumbo v6, "this as java.lang.String…ing(startIndex, endIndex)"

    const/4 v7, 0x0

    if-ne v1, v2, :cond_4b

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v8, "_"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "_999"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_72

    :cond_4b
    const/16 v8, 0x3e7

    if-ne v1, v8, :cond_71

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x5f

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_72

    :cond_71
    move-object v1, v3

    :goto_72
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_84

    const-string/jumbo v2, "updateSuffix: componentName "

    const-string v6, " suffixComponentName "

    invoke-static {v2, v0, v6, v1}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_84
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_db

    sget-object v0, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->getCacheInfo(Ljava/lang/String;)Lcom/android/launcher3/appedit/AppEditInfo;

    move-result-object v2

    if-nez v2, :cond_93

    goto :goto_9b

    :cond_93
    invoke-virtual {v2}, Lcom/android/launcher3/appedit/AppEditInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9a

    goto :goto_9b

    :cond_9a
    move-object v3, v4

    :goto_9b
    if-nez v2, :cond_9e

    goto :goto_a9

    :cond_9e
    invoke-virtual {v2}, Lcom/android/launcher3/appedit/AppEditInfo;->getTittleStatus()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_a5

    goto :goto_a9

    :cond_a5
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v7

    :goto_a9
    if-eqz v2, :cond_b7

    if-nez p2, :cond_af

    const/4 v0, 0x0

    goto :goto_b3

    :cond_af
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/appedit/AppEditInfo;->getIconStatus()Ljava/lang/Integer;

    move-result-object v0

    :goto_b3
    invoke-virtual {v2, v0}, Lcom/android/launcher3/appedit/AppEditInfo;->setIconStatus(Ljava/lang/Integer;)V

    goto :goto_cf

    :cond_b7
    new-instance v2, Lcom/android/launcher3/appedit/AppEditInfo;

    const/4 v9, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-string v11, ""

    move-object v8, v2

    move-object v10, v1

    move-object v14, v3

    invoke-direct/range {v8 .. v16}, Lcom/android/launcher3/appedit/AppEditInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->putCacheInfo(Ljava/lang/String;Lcom/android/launcher3/appedit/AppEditInfo;)V

    :goto_cf
    sget-object v8, Lcom/android/launcher3/appedit/AppEditDBManager;->Companion:Lcom/android/launcher3/appedit/AppEditDBManager$Companion;

    move-object/from16 v9, p4

    move-object v10, v1

    move-object v11, v3

    move/from16 v12, p3

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;->dbUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/Object;

    :cond_db
    return-void
.end method


# virtual methods
.method public final deleteTitle(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string p0, "cxt"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "componentName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->removeCacheInfo(Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/appedit/AppEditDBManager;->Companion:Lcom/android/launcher3/appedit/AppEditDBManager$Companion;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;->dbDeleteTitle(Landroid/content/Context;Ljava/lang/String;)I

    return-void
.end method

.method public final flatMapVerify(Landroid/content/Context;)Z
    .registers 2

    const-string p0, "cxt"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/appedit/AppEditDBManager;->Companion:Lcom/android/launcher3/appedit/AppEditDBManager$Companion;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;->dbTableCount(Landroid/content/Context;)I

    move-result p0

    if-lez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public final getTableCount(Landroid/content/Context;)I
    .registers 2

    const-string p0, "cxt"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/appedit/AppEditDBManager;->Companion:Lcom/android/launcher3/appedit/AppEditDBManager$Companion;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;->dbTableCount(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final initData(Landroid/content/Context;)Lcom/android/launcher3/appedit/AppEditModelLoader;
    .registers 4

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "AppEdit"

    const-string v0, "AppEditModelLoader"

    const-string v1, " count initData "

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final mapEntry(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/appedit/AppEditInfo;
    .registers 7

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "componentName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/appedit/AppEditDBManager;->Companion:Lcom/android/launcher3/appedit/AppEditDBManager$Companion;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;->dbTableCount(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_34

    const/16 v3, 0xfa

    if-gt v1, v3, :cond_2d

    invoke-virtual {v0}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;->getInstance()Lcom/android/launcher3/appedit/AppEditDBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/appedit/AppEditDBManager;->getCacheInfo()Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    if-le v0, v3, :cond_26

    goto :goto_2d

    :cond_26
    iget-object p0, p0, Lcom/android/launcher3/appedit/AppEditModelLoader;->mLoadNormal:Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderNormal;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderNormal;->mapEntry(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/appedit/AppEditInfo;

    move-result-object p0

    goto :goto_35

    :cond_2d
    :goto_2d
    iget-object p0, p0, Lcom/android/launcher3/appedit/AppEditModelLoader;->mLoadSmart:Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderSmart;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderSmart;->mapEntry(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/appedit/AppEditInfo;

    move-result-object p0

    goto :goto_35

    :cond_34
    move-object p0, v2

    :goto_35
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_6a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mapTitle tableCount "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " componentName "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " 2 title "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_58

    goto :goto_5c

    :cond_58
    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    :goto_5c
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppEdit"

    const-string v0, "AppEditModelLoader"

    invoke-static {p2, v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6a
    return-object p0
.end method

.method public final updateTitle(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IZ)V
    .registers 27

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move/from16 v11, p5

    const-string v0, "cxt"

    move-object/from16 v12, p1

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "componentName"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {v13, v9}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->getCacheInfo(Ljava/lang/String;)Lcom/android/launcher3/appedit/AppEditInfo;

    move-result-object v14

    const/4 v0, 0x0

    if-nez v14, :cond_22

    goto :goto_28

    :cond_22
    invoke-virtual {v14}, Lcom/android/launcher3/appedit/AppEditInfo;->getIconStatus()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_29

    :goto_28
    goto :goto_2f

    :cond_29
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz p6, :cond_30

    :goto_2f
    move v1, v0

    :cond_30
    const/16 v15, 0x10

    const/4 v2, 0x1

    const/16 v8, 0x11

    if-eq v11, v15, :cond_3c

    if-eq v11, v8, :cond_3c

    move/from16 v16, v1

    goto :goto_3e

    :cond_3c
    move/from16 v16, v2

    :goto_3e
    if-nez v14, :cond_41

    goto :goto_50

    :cond_41
    invoke-virtual {v14}, Lcom/android/launcher3/appedit/AppEditInfo;->getTittleStatus()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_48

    goto :goto_50

    :cond_48
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz p6, :cond_4f

    goto :goto_50

    :cond_4f
    move v0, v1

    :goto_50
    if-eq v11, v2, :cond_57

    if-eq v11, v8, :cond_57

    move/from16 v17, v0

    goto :goto_59

    :cond_57
    move/from16 v17, v2

    :goto_59
    if-eqz v14, :cond_6e

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/launcher3/appedit/AppEditInfo;->setIconStatus(Ljava/lang/Integer;)V

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/launcher3/appedit/AppEditInfo;->setTittleStatus(Ljava/lang/Integer;)V

    invoke-virtual {v14, v10}, Lcom/android/launcher3/appedit/AppEditInfo;->setTitle(Ljava/lang/String;)V

    move v10, v8

    goto :goto_8e

    :cond_6e
    new-instance v7, Lcom/android/launcher3/appedit/AppEditInfo;

    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v3, ""

    move-object v0, v7

    move-object/from16 v2, p2

    move-object/from16 v6, p4

    move-object v15, v7

    move-object/from16 v7, v18

    move v10, v8

    move-object/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/appedit/AppEditInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v13, v9, v15}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->putCacheInfo(Ljava/lang/String;Lcom/android/launcher3/appedit/AppEditInfo;)V

    :goto_8e
    sget-object v0, Lcom/android/launcher3/appedit/AppEditDBManager;->Companion:Lcom/android/launcher3/appedit/AppEditDBManager$Companion;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;->dbUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/Object;

    const/16 v0, 0x10

    if-eq v11, v0, :cond_a5

    if-eq v11, v10, :cond_a5

    if-eqz p6, :cond_b3

    :cond_a5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v14

    move/from16 v3, v16

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/appedit/AppEditModelLoader;->updateSuffix(Ljava/lang/String;Lcom/android/launcher3/appedit/AppEditInfo;ILandroid/content/Context;I)V

    :cond_b3
    return-void
.end method
