.class public final Lcom/oplus/quickstep/gesture/TransitionManager$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/gesture/TransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/TransitionManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculateScrollOffset(ZZLcom/android/launcher3/Workspace;ILcom/android/launcher3/views/FloatingIconViewContainer;F)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/android/launcher3/Workspace<",
            "*>;I",
            "Lcom/android/launcher3/views/FloatingIconViewContainer;",
            "F)I"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "workspace"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_28

    if-nez p2, :cond_28

    invoke-static {}, Lcom/android/launcher/effect/EffectSetting;->isCurrentNormalEffect()Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_28

    :cond_10
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p0

    sub-int/2addr p4, p0

    if-nez p5, :cond_18

    goto :goto_1b

    :cond_18
    invoke-virtual {p5, p6}, Lcom/android/launcher3/views/FloatingIconViewContainer;->setWindowAlpha(F)V

    :goto_1b
    const/4 p0, 0x0

    cmpl-float p0, p6, p0

    if-lez p0, :cond_27

    if-nez p5, :cond_23

    goto :goto_27

    :cond_23
    int-to-float p0, p4

    invoke-virtual {p5, p0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :cond_27
    :goto_27
    return p4

    :cond_28
    :goto_28
    const/4 p0, 0x0

    return p0
.end method

.method public final isHotseatIcon(Landroid/view/View;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_5

    move-object v0, p0

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    :goto_9
    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    if-nez p1, :cond_11

    goto :goto_15

    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    :goto_15
    const-string p1, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 p1, -0x65

    if-ne p0, p1, :cond_23

    const/4 v1, 0x1

    :cond_23
    return v1
.end method
