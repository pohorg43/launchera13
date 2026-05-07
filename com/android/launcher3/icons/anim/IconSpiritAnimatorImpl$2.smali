.class Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->playSpiritAnimation(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

.field public final synthetic val$isEnter:Z

.field public final synthetic val$s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;Ljava/lang/String;Z)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    iput-object p2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;->val$s:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;->val$isEnter:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;->val$s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onAnimationCancel"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IconSpiritAnimatorImpl"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$002(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;Z)Z

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {p1, v0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$102(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;Z)Z

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->resetAllFlagImmediately(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .registers 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;->val$s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "onAnimationEnd"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IconSpiritAnimatorImpl"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;->val$isEnter:Z

    if-eqz p1, :cond_1d

    goto :goto_33

    :cond_1d
    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$002(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;Z)Z

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {p1, p2}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$102(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;Z)Z

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {p1}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$500(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusBubbleTextView;->resetPointer()V

    :goto_33
    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$602(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;->val$s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onAnimationStart"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IconSpiritAnimatorImpl"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$002(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;Z)Z

    iget-boolean p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;->val$isEnter:Z

    if-nez p1, :cond_4e

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {p1}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$100(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Z

    move-result p1

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {p1}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$200(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Z

    move-result p1

    if-nez p1, :cond_43

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {p1}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$300(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_43

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {p1}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$400(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Z

    move-result p1

    if-eqz p1, :cond_4e

    :cond_43
    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {p1}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$500(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusBubbleTextView;->resetPointer()V

    :cond_4e
    iget-boolean p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;->val$isEnter:Z

    if-eqz p1, :cond_6c

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {p1}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$500(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$2;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {p0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$500(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setPointerIcon(Landroid/view/PointerIcon;)V

    :cond_6c
    return-void
.end method
