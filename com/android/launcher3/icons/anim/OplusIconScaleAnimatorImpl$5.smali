.class Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->createIconAnimation(Lcom/android/launcher3/icons/anim/IconAnimationParams;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;

.field public final synthetic val$fbIcon:Lcom/oplus/icons/OplusFastBitmapDrawable;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;Lcom/oplus/icons/OplusFastBitmapDrawable;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl$5;->this$0:Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;

    iput-object p2, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl$5;->val$fbIcon:Lcom/oplus/icons/OplusFastBitmapDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl$5;->val$fbIcon:Lcom/oplus/icons/OplusFastBitmapDrawable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method
