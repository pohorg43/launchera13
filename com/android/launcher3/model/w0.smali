.class public final synthetic Lcom/android/launcher3/model/w0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/prediction/AppPredictor$Callback;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/model/QuickstepModelDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/QuickstepModelDelegate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/w0;->a:Lcom/android/launcher3/model/QuickstepModelDelegate;

    return-void
.end method


# virtual methods
.method public final onTargetsAvailable(Ljava/util/List;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/model/w0;->a:Lcom/android/launcher3/model/QuickstepModelDelegate;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/QuickstepModelDelegate;->e(Lcom/android/launcher3/model/QuickstepModelDelegate;Ljava/util/List;)V

    return-void
.end method
