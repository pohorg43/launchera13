.class Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->setSelectedWithAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;

.field public final synthetic val$selectStateDrawParams:Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$3;->this$0:Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;

    iput-object p2, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$3;->val$selectStateDrawParams:Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$3;->val$selectStateDrawParams:Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->stateSwitching:Z

    iput-boolean p1, p0, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->stateSwitchingAnimaRunning:Z

    return-void
.end method
