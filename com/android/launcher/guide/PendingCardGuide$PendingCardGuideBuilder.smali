.class public final Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/guide/PendingCardGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingCardGuideBuilder"
.end annotation


# instance fields
.field private animResId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/RawRes;
    .end annotation
.end field

.field private animationView:Lcom/oplus/anim/EffectiveAnimationView;

.field private guideString:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private height:I

.field private launcherWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private needShowGuide:Z

.field private rotationX:F

.field private sizeRect:Landroid/graphics/Point;

.field private width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->sizeRect:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/launcher/guide/PendingCardGuide;
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->launcherWeakRef:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    iget-object v1, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->sizeRect:Landroid/graphics/Point;

    iget v2, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->width:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->height:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->animResId:Ljava/lang/Integer;

    if-eqz v1, :cond_5f

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationView;

    invoke-direct {v1, v0}, Lcom/oplus/anim/EffectiveAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->animationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->getRotationX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotationX(F)V

    invoke-virtual {p0}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->getAnimResId()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_31

    goto :goto_44

    :cond_31
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x7f11001b

    if-ne v2, v3, :cond_44

    invoke-virtual {v1, v3}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    invoke-static {v0}, Lcom/android/launcher/guide/GuidePrefUtils;->getShowPendingCardSlideGuide(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->setNeedShowGuide(Z)V

    :cond_44
    :goto_44
    invoke-virtual {p0}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->getAnimResId()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_4b

    goto :goto_65

    :cond_4b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x7f110014

    if-ne v2, v3, :cond_65

    invoke-virtual {v1, v3}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    invoke-static {v0}, Lcom/android/launcher/guide/GuidePrefUtils;->getShowPendingCardLongPressGuide(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->setNeedShowGuide(Z)V

    goto :goto_65

    :cond_5f
    invoke-static {v0}, Lcom/android/launcher/guide/GuidePrefUtils;->getShowPendingCardPinTip(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->needShowGuide:Z

    :cond_65
    :goto_65
    new-instance v0, Lcom/android/launcher/guide/PendingCardGuide;

    invoke-direct {v0, p0}, Lcom/android/launcher/guide/PendingCardGuide;-><init>(Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;)V

    return-object v0
.end method

.method public final getAnimResId()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->animResId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getAnimationView()Lcom/oplus/anim/EffectiveAnimationView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->animationView:Lcom/oplus/anim/EffectiveAnimationView;

    return-object p0
.end method

.method public final getGuideString()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->guideString:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getLauncherWeakRef()Ljava/lang/ref/WeakReference;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher/Launcher;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->launcherWeakRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public final getNeedShowGuide()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->needShowGuide:Z

    return p0
.end method

.method public final getRotationX()F
    .registers 1

    iget p0, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->rotationX:F

    return p0
.end method

.method public final getSizeRect()Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->sizeRect:Landroid/graphics/Point;

    return-object p0
.end method

.method public final init()Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->animResId:Ljava/lang/Integer;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->height:I

    iput v1, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->width:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->rotationX:F

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->sizeRect:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->animationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-nez v1, :cond_17

    goto :goto_37

    :cond_17
    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationView;->cancelAnimation()V

    invoke-virtual {p0}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->getLauncherWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-nez v2, :cond_22

    move-object v2, v0

    goto :goto_28

    :cond_22
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/Launcher;

    :goto_28
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_37
    iput-object v0, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->animationView:Lcom/oplus/anim/EffectiveAnimationView;

    iput-object v0, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->guideString:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setAnimResId(Ljava/lang/Integer;)Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;
    .registers 2
    .param p1  # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->animResId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setAnimResId(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->animResId:Ljava/lang/Integer;

    return-void
.end method

.method public final setAnimationView(Lcom/oplus/anim/EffectiveAnimationView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->animationView:Lcom/oplus/anim/EffectiveAnimationView;

    return-void
.end method

.method public final setGuideString(Ljava/lang/Integer;)Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;
    .registers 2
    .param p1  # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->guideString:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setGuideString(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->guideString:Ljava/lang/Integer;

    return-void
.end method

.method public final setHeight(I)Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;
    .registers 2

    iput p1, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->height:I

    return-object p0
.end method

.method public final setLauncherRef(Ljava/lang/ref/WeakReference;)Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher/Launcher;",
            ">;)",
            "Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;"
        }
    .end annotation

    const-string/jumbo v0, "ref"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->launcherWeakRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public final setLauncherWeakRef(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher/Launcher;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->launcherWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final setNeedShowGuide(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->needShowGuide:Z

    return-void
.end method

.method public final setRotationX(F)Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;
    .registers 2

    iput p1, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->rotationX:F

    return-object p0
.end method

.method public final setRotationX(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->rotationX:F

    return-void
.end method

.method public final setSizeRect(Landroid/graphics/Point;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->sizeRect:Landroid/graphics/Point;

    return-void
.end method

.method public final setWidth(I)Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;
    .registers 2

    iput p1, p0, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->width:I

    return-object p0
.end method
