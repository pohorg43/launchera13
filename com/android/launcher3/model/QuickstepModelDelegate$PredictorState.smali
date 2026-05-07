.class Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/QuickstepModelDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PredictorState"
.end annotation


# instance fields
.field public final containerId:I

.field private mLastTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;"
        }
    .end annotation
.end field

.field public predictor:Landroid/app/prediction/AppPredictor;

.field public final storage:Lcom/android/launcher3/util/PersistedItemArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/PersistedItemArray<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->containerId:I

    new-instance p1, Lcom/android/launcher3/util/PersistedItemArray;

    invoke-direct {p1, p2}, Lcom/android/launcher3/util/PersistedItemArray;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->storage:Lcom/android/launcher3/util/PersistedItemArray;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->mLastTargets:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Ljava/util/List;I)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->lambda$setTargets$0(Ljava/util/List;Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$setTargets$0(Ljava/util/List;Ljava/util/List;I)Z
    .registers 3

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/prediction/AppTarget;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/prediction/AppTarget;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/QuickstepModelDelegate;->access$000(Landroid/app/prediction/AppTarget;Landroid/app/prediction/AppTarget;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public destroyPredictor()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/app/prediction/AppPredictor;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    :cond_a
    return-void
.end method

.method public setTargets(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->mLastTargets:Ljava/util/List;

    iput-object p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->mLastTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne p0, v1, :cond_1f

    invoke-static {v2, p0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v1, Lcom/android/launcher3/model/b1;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/model/b1;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 v2, 0x1

    :cond_1f
    return v2
.end method
