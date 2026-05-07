.class Lcom/android/launcher3/dragndrop/OplusDragView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/dragndrop/OplusDragView;->stopAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/dragndrop/OplusDragView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/dragndrop/OplusDragView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/OplusDragView$3;->this$0:Lcom/android/launcher3/dragndrop/OplusDragView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    return-void
.end method
