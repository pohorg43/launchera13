.class Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$8;
.super Landroidx/dynamicanimation/animation/FloatValueHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->initSpiritAnimParams()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;F)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$8;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-direct {p0, p2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    return-void
.end method


# virtual methods
.method public setValue(F)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$8;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v0, p1}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$1102(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;F)F

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$8;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$500(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$8;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$500(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    invoke-interface {v0}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->getTranslateX()I

    move-result v1

    float-to-int p1, p1

    invoke-interface {v0, v1, p1}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->setTranslate(II)V

    goto :goto_51

    :cond_2b
    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$8;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$500(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$8;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$500(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/oplus/icons/OplusFastBitmapDrawable;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/oplus/icons/OplusFastBitmapDrawable;->updateTranslationY(I)V

    goto :goto_51

    :cond_4a
    const-string p1, "IconSpiritAnimatorImpl"

    const-string v0, "initSpiritAnimParams -- unknown icon type!!"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_51
    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$8;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {p0}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$500(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
