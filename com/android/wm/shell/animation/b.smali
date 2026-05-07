.class public final synthetic Lcom/android/wm/shell/animation/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/animation/PhysicsAnimator;

.field public final synthetic b:Landroidx/dynamicanimation/animation/FloatPropertyCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/animation/b;->a:Lcom/android/wm/shell/animation/PhysicsAnimator;

    iput-object p2, p0, Lcom/android/wm/shell/animation/b;->b:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/animation/b;->a:Lcom/android/wm/shell/animation/PhysicsAnimator;

    iget-object p0, p0, Lcom/android/wm/shell/animation/b;->b:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->a(Lcom/android/wm/shell/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method
