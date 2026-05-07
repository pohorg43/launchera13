.class public final synthetic Lcom/android/launcher3/model/x0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/prediction/AppPredictor$Callback;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/model/QuickstepModelDelegate;

.field public final synthetic b:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/QuickstepModelDelegate;Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/x0;->a:Lcom/android/launcher3/model/QuickstepModelDelegate;

    iput-object p2, p0, Lcom/android/launcher3/model/x0;->b:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    return-void
.end method


# virtual methods
.method public final onTargetsAvailable(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/model/x0;->a:Lcom/android/launcher3/model/QuickstepModelDelegate;

    iget-object p0, p0, Lcom/android/launcher3/model/x0;->b:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/model/QuickstepModelDelegate;->b(Lcom/android/launcher3/model/QuickstepModelDelegate;Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;Ljava/util/List;)V

    return-void
.end method
