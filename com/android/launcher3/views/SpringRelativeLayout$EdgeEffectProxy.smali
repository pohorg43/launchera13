.class public Lcom/android/launcher3/views/SpringRelativeLayout$EdgeEffectProxy;
.super Landroid/widget/EdgeEffect;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/views/SpringRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EdgeEffectProxy"
.end annotation


# instance fields
.field private final mParent:Landroid/widget/EdgeEffect;

.field public final synthetic this$0:Lcom/android/launcher3/views/SpringRelativeLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/SpringRelativeLayout;Landroid/content/Context;Landroid/widget/EdgeEffect;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/views/SpringRelativeLayout$EdgeEffectProxy;->this$0:Lcom/android/launcher3/views/SpringRelativeLayout;

    invoke-direct {p0, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/launcher3/views/SpringRelativeLayout$EdgeEffectProxy;->mParent:Landroid/widget/EdgeEffect;

    return-void
.end method

.method private invalidateParentScrollEffect()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/views/SpringRelativeLayout$EdgeEffectProxy;->mParent:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/android/launcher3/views/SpringRelativeLayout$EdgeEffectProxy;->this$0:Lcom/android/launcher3/views/SpringRelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_d
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public finish()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/views/SpringRelativeLayout$EdgeEffectProxy;->mParent:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    return-void
.end method

.method public isFinished()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/views/SpringRelativeLayout$EdgeEffectProxy;->mParent:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p0

    return p0
.end method

.method public onAbsorb(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/views/SpringRelativeLayout$EdgeEffectProxy;->mParent:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    invoke-direct {p0}, Lcom/android/launcher3/views/SpringRelativeLayout$EdgeEffectProxy;->invalidateParentScrollEffect()V

    return-void
.end method

.method public onPull(F)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/views/SpringRelativeLayout$EdgeEffectProxy;->mParent:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    invoke-direct {p0}, Lcom/android/launcher3/views/SpringRelativeLayout$EdgeEffectProxy;->invalidateParentScrollEffect()V

    return-void
.end method

.method public onPull(FF)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/views/SpringRelativeLayout$EdgeEffectProxy;->mParent:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    invoke-direct {p0}, Lcom/android/launcher3/views/SpringRelativeLayout$EdgeEffectProxy;->invalidateParentScrollEffect()V

    return-void
.end method

.method public onRelease()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/views/SpringRelativeLayout$EdgeEffectProxy;->mParent:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-direct {p0}, Lcom/android/launcher3/views/SpringRelativeLayout$EdgeEffectProxy;->invalidateParentScrollEffect()V

    return-void
.end method
