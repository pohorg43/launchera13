.class public final synthetic Lcom/android/wm/shell/bubbles/animation/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

.field public final synthetic b:Z

.field public final synthetic c:[Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Z[Ljava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/m;->a:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iput-boolean p2, p0, Lcom/android/wm/shell/bubbles/animation/m;->b:Z

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/animation/m;->c:[Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 12

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/m;->a:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/animation/m;->b:Z

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/animation/m;->c:[Ljava/lang/Runnable;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->f(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Z[Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method
