.class public final Lcom/android/launcher/layout/AutoFillHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/layout/LayoutParserInjector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/layout/AutoFillHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/layout/AutoFillHelper$Companion;

.field private static final SELECTION:Ljava/lang/String; = "_id = ?"

.field private static final TAG:Ljava/lang/String; = "AutoFillHelper"


# instance fields
.field private final context:Landroid/content/Context;

.field private final enableBottomAlign$delegate:Ly2/e;

.field private final grid$delegate:Ly2/e;

.field private lastParsedItem:Lcom/android/launcher/layout/Item;

.field private final movableItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/layout/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final nonMovableOccupancy$delegate:Ly2/e;

.field private traceToken:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/layout/AutoFillHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/layout/AutoFillHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/layout/AutoFillHelper;->Companion:Lcom/android/launcher/layout/AutoFillHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/AutoFillHelper;->context:Landroid/content/Context;

    sget-object p1, Lcom/android/launcher/layout/AutoFillHelper$grid$2;->INSTANCE:Lcom/android/launcher/layout/AutoFillHelper$grid$2;

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/layout/AutoFillHelper;->grid$delegate:Ly2/e;

    sget-object p1, Lcom/android/launcher/layout/AutoFillHelper$enableBottomAlign$2;->INSTANCE:Lcom/android/launcher/layout/AutoFillHelper$enableBottomAlign$2;

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/layout/AutoFillHelper;->enableBottomAlign$delegate:Ly2/e;

    new-instance p1, Lcom/android/launcher/layout/AutoFillHelper$nonMovableOccupancy$2;

    invoke-direct {p1, p0}, Lcom/android/launcher/layout/AutoFillHelper$nonMovableOccupancy$2;-><init>(Lcom/android/launcher/layout/AutoFillHelper;)V

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/layout/AutoFillHelper;->nonMovableOccupancy$delegate:Ly2/e;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/AutoFillHelper;->movableItems:Ljava/util/List;

    new-instance p1, Lcom/android/launcher/layout/Item;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher/layout/Item;-><init>(IIILjava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/launcher/layout/AutoFillHelper;->lastParsedItem:Lcom/android/launcher/layout/Item;

    return-void
.end method

.method public static final synthetic access$getGrid(Lcom/android/launcher/layout/AutoFillHelper;)Landroid/graphics/Point;
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->getGrid()Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method private final clearBottomAlignData()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->getNonMovableOccupancy()Lcom/android/launcher3/util/GridOccupancy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    iget-object p0, p0, Lcom/android/launcher/layout/AutoFillHelper;->movableItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private final getEnableBottomAlign()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/AutoFillHelper;->enableBottomAlign$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final getGrid()Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/AutoFillHelper;->grid$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;

    return-object p0
.end method

.method private final getNextPosition(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 7

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v3

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Point;->set(II)V

    iget p1, v0, Landroid/graphics/Point;->x:I

    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->getGrid()Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->x:I

    if-lt p1, p2, :cond_3b

    iget p1, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Point;->set(II)V

    iget p1, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->getGrid()Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    if-lt p1, p0, :cond_3b

    const-string p0, "getNextPosition out of bounds "

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutoFillHelper"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    return-object v0
.end method

.method private final getNonMovableOccupancy()Lcom/android/launcher3/util/GridOccupancy;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/AutoFillHelper;->nonMovableOccupancy$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/GridOccupancy;

    return-object p0
.end method

.method private final getVerifiedPosition(Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/layout/AutoFillHelper;->lastParsedItem:Lcom/android/launcher/layout/Item;

    invoke-virtual {v0}, Lcom/android/launcher/layout/Item;->getOriginalPosition()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/layout/AutoFillHelper;->lastParsedItem:Lcom/android/launcher/layout/Item;

    invoke-virtual {v1}, Lcom/android/launcher/layout/Item;->getSpan()Landroid/graphics/Point;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher/layout/AutoFillHelper;->getNextPosition(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/layout/AutoFillHelper;->lastParsedItem:Lcom/android/launcher/layout/Item;

    invoke-virtual {v1}, Lcom/android/launcher/layout/Item;->getOriginalPosition()Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_2b

    :cond_23
    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Point;->set(II)V

    goto :goto_57

    :cond_2b
    :goto_2b
    iget-object p1, p0, Lcom/android/launcher/layout/AutoFillHelper;->lastParsedItem:Lcom/android/launcher/layout/Item;

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getSuccess()Z

    move-result p1

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/android/launcher/layout/AutoFillHelper;->lastParsedItem:Lcom/android/launcher/layout/Item;

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getVerifiedPosition()Landroid/graphics/Point;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/layout/AutoFillHelper;->lastParsedItem:Lcom/android/launcher/layout/Item;

    invoke-virtual {v0}, Lcom/android/launcher/layout/Item;->getSpan()Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/layout/AutoFillHelper;->getNextPosition(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    goto :goto_57

    :cond_44
    iget-object p1, p0, Lcom/android/launcher/layout/AutoFillHelper;->lastParsedItem:Lcom/android/launcher/layout/Item;

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getVerifiedPosition()Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object p0, p0, Lcom/android/launcher/layout/AutoFillHelper;->lastParsedItem:Lcom/android/launcher/layout/Item;

    invoke-virtual {p0}, Lcom/android/launcher/layout/Item;->getVerifiedPosition()Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p1, p0}, Landroid/graphics/Point;->set(II)V

    :goto_57
    return-object v0
.end method

.method private final isStartingNewScreen(II)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/layout/AutoFillHelper;->lastParsedItem:Lcom/android/launcher/layout/Item;

    invoke-virtual {v0}, Lcom/android/launcher/layout/Item;->getContainer()I

    move-result v0

    if-ne v0, p1, :cond_13

    iget-object p0, p0, Lcom/android/launcher/layout/AutoFillHelper;->lastParsedItem:Lcom/android/launcher/layout/Item;

    invoke-virtual {p0}, Lcom/android/launcher/layout/Item;->getScreenId()I

    move-result p0

    if-eq p0, p2, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private final shouldNotAutoFill(II)Z
    .registers 6

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    const/4 v1, 0x1

    const-string v2, "AutoFillHelper"

    if-eqz v0, :cond_14

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_14

    if-nez p2, :cond_14

    const-string/jumbo p0, "verifyCellXY oplus 0 screen"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_14
    invoke-direct {p0, p1, p2}, Lcom/android/launcher/layout/AutoFillHelper;->isStartingNewScreen(II)Z

    move-result p1

    if-eqz p1, :cond_21

    const-string/jumbo p0, "verifyCellXY new screen"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_21
    iget-object p1, p0, Lcom/android/launcher/layout/AutoFillHelper;->lastParsedItem:Lcom/android/launcher/layout/Item;

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getSuccess()Z

    move-result p1

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/android/launcher/layout/AutoFillHelper;->lastParsedItem:Lcom/android/launcher/layout/Item;

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getOriginalPosition()Landroid/graphics/Point;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/layout/AutoFillHelper;->lastParsedItem:Lcom/android/launcher/layout/Item;

    invoke-virtual {p0}, Lcom/android/launcher/layout/Item;->getVerifiedPosition()Landroid/graphics/Point;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    const-string/jumbo p0, "verifyCellXY no need verify"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_42
    const/4 p0, 0x0

    return p0
.end method

.method private final tryBottomAlign()V
    .registers 16

    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->getEnableBottomAlign()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher/layout/AutoFillHelper;->movableItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/layout/AutoFillHelper;->movableItems:Ljava/util/List;

    sget-object v2, Lcom/android/launcher/layout/AutoFillHelper$tryBottomAlign$1;->INSTANCE:Lcom/android/launcher/layout/AutoFillHelper$tryBottomAlign$1;

    const-string v3, "<this>"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "predicate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lz2/p;->w(Ljava/util/List;Lkotlin/jvm/functions/Function1;Z)Z

    iget-object v1, p0, Lcom/android/launcher/layout/AutoFillHelper;->movableItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "AutoFillHelper"

    if-ne v1, v0, :cond_3a

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_36

    const-string/jumbo v0, "preload ok size "

    invoke-static {v1, v0, v2}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_36
    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->clearBottomAlignData()V

    return-void

    :cond_3a
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v4, "bottom-align"

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/launcher/layout/AutoFillHelper;->context:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/launcher/mode/LauncherModeManager;->getItemContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher/layout/AutoFillHelper;->movableItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    :goto_5d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    if-ltz v8, :cond_e4

    check-cast v9, Lcom/android/launcher/layout/Item;

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->getGrid()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->x:I

    add-int/2addr v12, v8

    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->getGrid()Landroid/graphics/Point;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Point;->x:I

    rem-int v13, v1, v13

    sub-int/2addr v12, v13

    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->getGrid()Landroid/graphics/Point;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Point;->x:I

    rem-int/2addr v12, v13

    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->getGrid()Landroid/graphics/Point;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Point;->y:I

    sub-int/2addr v13, v3

    sub-int v8, v1, v8

    sub-int/2addr v8, v3

    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->getGrid()Landroid/graphics/Point;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Point;->x:I

    div-int/2addr v8, v14

    sub-int/2addr v13, v8

    invoke-direct {v11, v12, v13}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v9}, Lcom/android/launcher/layout/Item;->getVerifiedPosition()Landroid/graphics/Point;

    move-result-object v8

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e1

    new-array v8, v3, [Ljava/lang/String;

    invoke-virtual {v9}, Lcom/android/launcher/layout/Item;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    iget v12, v11, Landroid/graphics/Point;->x:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "cellX"

    invoke-virtual {v9, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "cellY"

    invoke-virtual {v9, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    const-string v12, "_id = ?"

    invoke-virtual {v11, v12, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e1
    move v8, v10

    goto/16 :goto_5d

    :cond_e4
    invoke-static {}, Li1/j;->r()V

    const/4 p0, 0x0

    throw p0

    :cond_e9
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_fb

    const-string/jumbo v1, "previous screen bottom align"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/layout/AutoFillHelper;->context:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/common/util/OplusLauncherDbUtils;->applyBatch(Landroid/content/Context;Ljava/util/ArrayList;)Z

    :cond_fb
    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->clearBottomAlignData()V

    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method private final updateBottomAlignData(Lcom/android/launcher/layout/Item;)V
    .registers 10

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getMovable()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/launcher/layout/AutoFillHelper;->movableItems:Ljava/util/List;

    invoke-static {v0}, Lz2/r;->G(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/layout/Item;

    const-string v1, "AutoFillHelper"

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/android/launcher/layout/Item;->getOriginalPosition()Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getOriginalPosition()Landroid/graphics/Point;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_3d

    :cond_21
    invoke-virtual {v0}, Lcom/android/launcher/layout/Item;->getSuccess()Z

    move-result v0

    if-nez v0, :cond_6f

    iget-object p0, p0, Lcom/android/launcher/layout/AutoFillHelper;->movableItems:Ljava/util/List;

    invoke-static {p0}, Li1/j;->j(Ljava/util/List;)I

    move-result v0

    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_6f

    const-string/jumbo p0, "updateBottomAlignData replace"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f

    :cond_3d
    :goto_3d
    iget-object p0, p0, Lcom/android/launcher/layout/AutoFillHelper;->movableItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_6f

    const-string/jumbo p0, "updateBottomAlignData append"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f

    :cond_4f
    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->getNonMovableOccupancy()Lcom/android/launcher3/util/GridOccupancy;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getOriginalPosition()Landroid/graphics/Point;

    move-result-object p0

    iget v3, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getOriginalPosition()Landroid/graphics/Point;

    move-result-object p0

    iget v4, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getSpan()Landroid/graphics/Point;

    move-result-object p0

    iget v5, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getSpan()Landroid/graphics/Point;

    move-result-object p0

    iget v6, p0, Landroid/graphics/Point;->y:I

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_6f
    :goto_6f
    return-void
.end method

.method private final updateItemVerifiedPosition(Lcom/android/launcher/layout/Item;Landroid/content/ContentValues;Z)V
    .registers 8

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getSuccess()Z

    move-result v0

    const-string v1, "AutoFillHelper"

    if-nez v0, :cond_2e

    if-eqz p3, :cond_b

    goto :goto_2e

    :cond_b
    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getOriginalPosition()Landroid/graphics/Point;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/launcher/layout/AutoFillHelper;->getVerifiedPosition(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getVerifiedPosition()Landroid/graphics/Point;

    move-result-object p2

    iget p3, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, p3, p0}, Landroid/graphics/Point;->set(II)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_98

    const-string p0, "auto fill "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_98

    :cond_2e
    :goto_2e
    const-string p0, "cellX"

    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    const-string v0, "cellY"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getVerifiedPosition()Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v3, "values.getAsInteger(Favorites.CELLX)"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v0, "values.getAsInteger(Favorites.CELLY)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {v2, p0, p2}, Landroid/graphics/Point;->set(II)V

    goto :goto_75

    :cond_62
    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getVerifiedPosition()Landroid/graphics/Point;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getOriginalPosition()Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getOriginalPosition()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p2, v0}, Landroid/graphics/Point;->set(II)V

    :goto_75
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_98

    const-string/jumbo p0, "no auto fill "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getSuccess()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_98
    :goto_98
    return-void
.end method

.method private final verifyCellXY(Landroid/content/ContentValues;)V
    .registers 8

    const-string v0, "container"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AutoFillHelper"

    if-nez v1, :cond_b

    goto :goto_13

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, -0x64

    if-eq v3, v4, :cond_20

    :goto_13
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_1f

    const-string/jumbo p0, "verifyCellXY container not desktop"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    return-void

    :cond_20
    const-string/jumbo v3, "screen"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v1, "screenId"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher/layout/AutoFillHelper;->shouldNotAutoFill(II)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string/jumbo p0, "verifyCellXY should not auto fill "

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_49
    new-instance v0, Landroid/graphics/Point;

    const-string v1, "cellX"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "values.getAsInteger(Favorites.CELLX)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const-string v3, "cellY"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "values.getAsInteger(Favorites.CELLY)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-direct {v0, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/android/launcher/layout/AutoFillHelper;->getVerifiedPosition(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    iget v0, p0, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/AutoFillHelper;->context:Landroid/content/Context;

    return-object p0
.end method

.method public onPostAddElement(Landroid/content/ContentValues;Landroid/graphics/Point;IZLjava/lang/String;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p5

    const-string/jumbo v2, "values"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "original"

    move-object/from16 v7, p2

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "tagName"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "container"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    const-string/jumbo v3, "screen"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    const-string/jumbo v3, "spanX"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v15, 0x1

    if-eqz v4, :cond_5d

    const-string/jumbo v4, "spanY"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5d

    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v6, "values.getAsInteger(Favorites.SPANX)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v6, "values.getAsInteger(Favorites.SPANY)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-direct {v5, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    move-object v9, v5

    goto :goto_63

    :cond_5d
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v15, v15}, Landroid/graphics/Point;-><init>(II)V

    move-object v9, v3

    :goto_63
    new-instance v11, Lcom/android/launcher/layout/Item;

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v2, "screenId"

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v8, 0x0

    const/16 v10, 0x20

    const/16 v16, 0x0

    move-object v2, v11

    move/from16 v3, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p2

    move-object/from16 p2, v11

    move-object/from16 v11, v16

    invoke-direct/range {v2 .. v11}, Lcom/android/launcher/layout/Item;-><init>(IIILjava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/layout/Item;->getSuccess()Z

    move-result v2

    if-eqz v2, :cond_9c

    const-string v2, "card"

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    iget-object v2, v0, Lcom/android/launcher/layout/AutoFillHelper;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/ota/AddCardManager;->markAddWeatherStepCardDone(Landroid/content/Context;)V

    :cond_9c
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher/layout/AutoFillHelper;->getEnableBottomAlign()Z

    move-result v2

    const-string v3, "AutoFillHelper"

    const/16 v4, -0x64

    if-eqz v2, :cond_dc

    iget-object v2, v0, Lcom/android/launcher/layout/AutoFillHelper;->lastParsedItem:Lcom/android/launcher/layout/Item;

    invoke-virtual {v2}, Lcom/android/launcher/layout/Item;->getContainer()I

    move-result v2

    if-ne v2, v4, :cond_dc

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v0, v2, v5}, Lcom/android/launcher/layout/AutoFillHelper;->isStartingNewScreen(II)Z

    move-result v2

    if-eqz v2, :cond_dc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "new screen "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher/layout/AutoFillHelper;->tryBottomAlign()V

    :cond_dc
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v4, :cond_e3

    return-void

    :cond_e3
    if-nez p4, :cond_f5

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v0, v2, v4}, Lcom/android/launcher/layout/AutoFillHelper;->shouldNotAutoFill(II)Z

    move-result v2

    if-eqz v2, :cond_f4

    goto :goto_f5

    :cond_f4
    const/4 v15, 0x0

    :cond_f5
    :goto_f5
    move-object/from16 v2, p2

    invoke-direct {v0, v2, v1, v15}, Lcom/android/launcher/layout/AutoFillHelper;->updateItemVerifiedPosition(Lcom/android/launcher/layout/Item;Landroid/content/ContentValues;Z)V

    const-string/jumbo v1, "onPostAddElement verified "

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/launcher/layout/AutoFillHelper;->lastParsedItem:Lcom/android/launcher/layout/Item;

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher/layout/AutoFillHelper;->getEnableBottomAlign()Z

    move-result v1

    if-eqz v1, :cond_10f

    invoke-direct {v0, v2}, Lcom/android/launcher/layout/AutoFillHelper;->updateBottomAlignData(Lcom/android/launcher/layout/Item;)V

    :cond_10f
    return-void
.end method

.method public onPostLayoutParse()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->tryBottomAlign()V

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    iget-object p0, p0, Lcom/android/launcher/layout/AutoFillHelper;->traceToken:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreAddFolder(Landroid/content/ContentValues;)V
    .registers 3

    const-string/jumbo v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/layout/AutoFillHelper;->verifyCellXY(Landroid/content/ContentValues;)V

    return-void
.end method

.method public onPreAddShortcut(Landroid/content/ContentValues;)V
    .registers 3

    const-string/jumbo v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/layout/AutoFillHelper;->verifyCellXY(Landroid/content/ContentValues;)V

    return-void
.end method

.method public onPreLayoutParse()V
    .registers 3

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "layout-parse"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/layout/AutoFillHelper;->traceToken:Ljava/lang/Object;

    return-void
.end method
