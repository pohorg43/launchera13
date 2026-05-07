.class Lcom/android/launcher/shimmer/ShimmerDrawable$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/shimmer/ShimmerDrawable;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/shimmer/ShimmerDrawable;


# direct methods
.method public constructor <init>(Lcom/android/launcher/shimmer/ShimmerDrawable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/shimmer/ShimmerDrawable$1;->this$0:Lcom/android/launcher/shimmer/ShimmerDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/shimmer/ShimmerDrawable$1;->this$0:Lcom/android/launcher/shimmer/ShimmerDrawable;

    invoke-static {p0}, Lcom/android/launcher/shimmer/ShimmerDrawable;->access$300(Lcom/android/launcher/shimmer/ShimmerDrawable;)V

    return-void
.end method
