.class public final Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView$Companion;

.field private static final TAG:Ljava/lang/String; = "TriggerPanelView"


# instance fields
.field private alreadyReset:Z

.field private final bgLandscapeTopOffset:F

.field private final bgPortraitTopOffset:F

.field private centerPointHorizontalOffset:I

.field private currentAppRotation:I

.field private currentProgress:F

.field private currentRotation:I

.field private displayRotation:I

.field private final doubleBgIntervalSize:F

.field private final doubleBgWidth:F

.field private enterAnimator:Landroid/animation/ValueAnimator;

.field private hintBackgroundView:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

.field private hintExternalScreenSelectedView:Landroid/view/View;

.field private hintExternalScreenView:Landroid/view/View;

.field private hintFloatingWindowSelectedView:Landroid/view/View;

.field private hintFloatingWindowView:Landroid/view/View;

.field private final hintIconMarginTop:F

.field private iconExternalScreenSelectedView:Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

.field private iconExternalScreenView:Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

.field private iconFloatingWindowSelectedView:Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

.field private iconFloatingWindowView:Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

.field private isFirstSelect:Z

.field private isLastLeftAreaSelected:Z

.field private isRtl:Z

.field private isSelectAnimationStarted:Z

.field private isWindowAnimationStarted:Z

.field private panelType:I

.field private recentsAnimator:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Long;",
            "Ly2/p;",
            ">;"
        }
    .end annotation
.end field

.field private final selectAnimRunnable:Ljava/lang/Runnable;

.field private final selectAreaBoundaryOffset:F

.field private singleOptionsType:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

.field private final strExternalScreenSelected:Ljava/lang/String;

.field private final strFloatingWindowSelected:Ljava/lang/String;

.field private titleExternalScreenSelectedView:Landroid/widget/TextView;

.field private titleExternalScreenView:Landroid/widget/TextView;

.field private titleFloatingWindowSelectedView:Landroid/widget/TextView;

.field private titleFloatingWindowView:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->Companion:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070a97

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintIconMarginTop:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070a8e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->bgPortraitTopOffset:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070a8b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->bgLandscapeTopOffset:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070a84

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->doubleBgIntervalSize:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070a88

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->doubleBgWidth:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070a98

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->selectAreaBoundaryOffset:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1203c0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->strExternalScreenSelected:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1203a8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->strFloatingWindowSelected:Ljava/lang/String;

    sget-object p1, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView$recentsAnimator$1;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView$recentsAnimator$1;

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->recentsAnimator:Lkotlin/jvm/functions/Function4;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isFirstSelect:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isRtl:Z

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->panelType:I

    sget-object v1, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;->FLOATING_WINDOW:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    iput-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->singleOptionsType:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    new-instance v1, Lcom/oplus/quickstep/rapidreaction/widget/b;

    invoke-direct {v1, p0, p1}, Lcom/oplus/quickstep/rapidreaction/widget/b;-><init>(Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;I)V

    iput-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->selectAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0d01bd

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const-string v4, "inflater.inflate(R.layout.rapid_hint_panel, null)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowView:Landroid/view/View;

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowSelectedView:Landroid/view/View;

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenView:Landroid/view/View;

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenSelectedView:Landroid/view/View;

    new-instance p1, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintBackgroundView:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowView:Landroid/view/View;

    const v0, 0x7f0a0402

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "hintFloatingWindowView.f…ViewById(R.id.rapid_icon)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->iconFloatingWindowView:Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowSelectedView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "hintFloatingWindowSelect…ViewById(R.id.rapid_icon)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->iconFloatingWindowSelectedView:Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "hintExternalScreenView.f…ViewById(R.id.rapid_icon)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->iconExternalScreenView:Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenSelectedView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "hintExternalScreenSelect…ViewById(R.id.rapid_icon)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->iconExternalScreenSelectedView:Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowView:Landroid/view/View;

    const v0, 0x7f0a0403

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "hintFloatingWindowView.f…iewById(R.id.rapid_title)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleFloatingWindowView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowSelectedView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "hintFloatingWindowSelect…iewById(R.id.rapid_title)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleFloatingWindowSelectedView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "hintExternalScreenView.f…iewById(R.id.rapid_title)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleExternalScreenView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenSelectedView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "hintExternalScreenSelect…iewById(R.id.rapid_title)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleExternalScreenSelectedView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->initViewContent()V

    sget-object p1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->currentAppRotation:I

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->onRotationChangeIfNeed(II)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintBackgroundView:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowView:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowSelectedView:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenView:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenSelectedView:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attributeSet"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a97

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintIconMarginTop:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a8e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->bgPortraitTopOffset:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a8b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->bgLandscapeTopOffset:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a84

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->doubleBgIntervalSize:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a88

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->doubleBgWidth:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a98

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->selectAreaBoundaryOffset:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1203c0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->strExternalScreenSelected:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1203a8

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->strFloatingWindowSelected:Ljava/lang/String;

    sget-object p1, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView$recentsAnimator$1;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView$recentsAnimator$1;

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->recentsAnimator:Lkotlin/jvm/functions/Function4;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isFirstSelect:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result p2

    iput-boolean p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isRtl:Z

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->panelType:I

    sget-object p1, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;->FLOATING_WINDOW:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->singleOptionsType:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    new-instance p1, Lcom/oplus/quickstep/rapidreaction/widget/b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/oplus/quickstep/rapidreaction/widget/b;-><init>(Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;I)V

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->selectAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d01bd

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v3, "inflater.inflate(R.layout.rapid_hint_panel, null)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowView:Landroid/view/View;

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowSelectedView:Landroid/view/View;

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenView:Landroid/view/View;

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenSelectedView:Landroid/view/View;

    new-instance p1, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintBackgroundView:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowView:Landroid/view/View;

    const p2, 0x7f0a0402

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "hintFloatingWindowView.f…ViewById(R.id.rapid_icon)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->iconFloatingWindowView:Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowSelectedView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "hintFloatingWindowSelect…ViewById(R.id.rapid_icon)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->iconFloatingWindowSelectedView:Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "hintExternalScreenView.f…ViewById(R.id.rapid_icon)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->iconExternalScreenView:Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenSelectedView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "hintExternalScreenSelect…ViewById(R.id.rapid_icon)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->iconExternalScreenSelectedView:Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowView:Landroid/view/View;

    const p2, 0x7f0a0403

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "hintFloatingWindowView.f…iewById(R.id.rapid_title)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleFloatingWindowView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowSelectedView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "hintFloatingWindowSelect…iewById(R.id.rapid_title)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleFloatingWindowSelectedView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "hintExternalScreenView.f…iewById(R.id.rapid_title)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleExternalScreenView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenSelectedView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "hintExternalScreenSelect…iewById(R.id.rapid_title)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleExternalScreenSelectedView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->initViewContent()V

    sget-object p1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    iget p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->currentAppRotation:I

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->onRotationChangeIfNeed(II)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintBackgroundView:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowView:Landroid/view/View;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowSelectedView:Landroid/view/View;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenView:Landroid/view/View;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenSelectedView:Landroid/view/View;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->selectAnimRunnable$lambda-0(Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;)V

    return-void
.end method

.method public static final synthetic access$setEnterAnimator$p(Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;Landroid/animation/ValueAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->enterAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static synthetic b(Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->createSelectAnimation$lambda-6(Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->createUnselectedAnimation$lambda-7(Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final calculateSelectArea()Z
    .registers 9

    iget-boolean v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isLastLeftAreaSelected:Z

    iget-boolean v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isFirstSelect:Z

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_28

    iput-boolean v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isFirstSelect:Z

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->panelType:I

    if-ne v0, v4, :cond_18

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->singleOptionsType:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    sget-object v1, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;->ONE_PUTT:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    if-ne v0, v1, :cond_16

    goto :goto_25

    :cond_16
    move v4, v3

    goto :goto_25

    :cond_18
    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->centerPointHorizontalOffset:I

    if-gez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v4, v3

    :goto_1e
    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->currentRotation:I

    if-ne v0, v2, :cond_25

    xor-int/lit8 v0, v4, 0x1

    move v4, v0

    :cond_25
    :goto_25
    iput-boolean v4, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isLastLeftAreaSelected:Z

    return v3

    :cond_28
    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->panelType:I

    if-ne v1, v4, :cond_38

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->singleOptionsType:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    sget-object v2, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;->ONE_PUTT:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    if-ne v1, v2, :cond_34

    move v1, v4

    goto :goto_35

    :cond_34
    move v1, v3

    :goto_35
    iput-boolean v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isLastLeftAreaSelected:Z

    goto :goto_70

    :cond_38
    if-eqz v0, :cond_54

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->centerPointHorizontalOffset:I

    int-to-float v5, v1

    iget v6, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->selectAreaBoundaryOffset:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_45

    move v5, v4

    goto :goto_46

    :cond_45
    move v5, v3

    :goto_46
    iget v7, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->currentRotation:I

    if-ne v7, v2, :cond_6e

    int-to-float v1, v1

    neg-float v2, v6

    cmpl-float v1, v1, v2

    if-lez v1, :cond_52

    move v5, v4

    goto :goto_6e

    :cond_52
    move v5, v3

    goto :goto_6e

    :cond_54
    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->centerPointHorizontalOffset:I

    neg-int v5, v1

    int-to-float v5, v5

    iget v6, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->selectAreaBoundaryOffset:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_60

    move v5, v4

    goto :goto_61

    :cond_60
    move v5, v3

    :goto_61
    iget v7, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->currentRotation:I

    if-ne v7, v2, :cond_6e

    int-to-float v1, v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_6c

    move v1, v4

    goto :goto_6d

    :cond_6c
    move v1, v3

    :goto_6d
    move v5, v1

    :cond_6e
    :goto_6e
    iput-boolean v5, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isLastLeftAreaSelected:Z

    :goto_70
    iget-boolean p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isLastLeftAreaSelected:Z

    if-ne v0, p0, :cond_75

    move v3, v4

    :cond_75
    return v3
.end method

.method private final cancelEnterAnimation()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "TriggerPanelView"

    const-string v2, "cancelEnterAnimation()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->enterAnimator:Landroid/animation/ValueAnimator;

    if-nez p0, :cond_e

    goto :goto_2b

    :cond_e
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "it.listeners"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_1b

    :cond_2b
    :goto_2b
    return-void
.end method

.method private final createEnterAnimator()Landroid/animation/ValueAnimator;
    .registers 5

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->currentRotation:I

    const-string v1, "createEnterAnimator: currentRotation = "

    const-string v2, "QuickStep"

    const-string v3, "TriggerPanelView"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowView:Landroid/view/View;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowSelectedView:Landroid/view/View;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenView:Landroid/view/View;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenSelectedView:Landroid/view/View;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintBackgroundView:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->createEnterAnimator(Landroid/view/View;[Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView$createEnterAnimator$1;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView$createEnterAnimator$1;-><init>(Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private final createSelectAnimation()Landroid/animation/AnimatorSet;
    .registers 10

    invoke-direct {p0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->calculateSelectArea()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const-string v0, "QuickStep"

    const-string v1, "TriggerPanelView"

    const-string v2, "createSelectAnimation()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintBackgroundView:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    iget-boolean v4, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isLastLeftAreaSelected:Z

    iget v5, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->panelType:I

    iget-object v6, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->singleOptionsType:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    new-instance v7, Lcom/oplus/quickstep/rapidreaction/widget/c;

    const/4 v0, 0x0

    invoke-direct {v7, p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/c;-><init>(Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;I)V

    const/16 v1, 0xa

    new-array v8, v1, [Landroid/view/View;

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenView:Landroid/view/View;

    aput-object v1, v8, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenSelectedView:Landroid/view/View;

    aput-object v1, v8, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowView:Landroid/view/View;

    aput-object v1, v8, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowSelectedView:Landroid/view/View;

    aput-object v1, v8, v0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleExternalScreenView:Landroid/widget/TextView;

    aput-object v1, v8, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleExternalScreenSelectedView:Landroid/widget/TextView;

    aput-object v1, v8, v0

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleFloatingWindowView:Landroid/widget/TextView;

    aput-object v1, v8, v0

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleFloatingWindowSelectedView:Landroid/widget/TextView;

    aput-object v1, v8, v0

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->iconExternalScreenView:Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

    aput-object v1, v8, v0

    const/16 v0, 0x9

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->iconFloatingWindowView:Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

    aput-object p0, v8, v0

    invoke-static/range {v3 .. v8}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->createSelectedAnimator(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;ZILcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;Ljava/util/function/Consumer;[Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method private static final createSelectAnimation$lambda-6(Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;Ljava/lang/Boolean;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->panelType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1a

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->singleOptionsType:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    sget-object v0, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;->FLOATING_WINDOW:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    if-ne p1, v0, :cond_18

    :cond_16
    move p1, v2

    goto :goto_2a

    :cond_18
    :goto_18
    move p1, v1

    goto :goto_2a

    :cond_1a
    iget-boolean v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isRtl:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz v0, :cond_27

    if-nez p1, :cond_26

    move p1, v2

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :cond_27
    :goto_27
    if-eqz p1, :cond_16

    goto :goto_18

    :goto_2a
    if-eq p1, v2, :cond_37

    if-eq p1, v1, :cond_2f

    goto :goto_3e

    :cond_2f
    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleExternalScreenSelectedView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->strExternalScreenSelected:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_3e

    :cond_37
    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleFloatingWindowSelectedView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->strFloatingWindowSelected:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :goto_3e
    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->recentsAnimator:Lkotlin/jvm/functions/Function4;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-wide/16 v2, 0x17f

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0, v0, v1, p1, v2}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final createUnselectedAnimation()Landroid/animation/AnimatorSet;
    .registers 9

    const-string v0, "QuickStep"

    const-string v1, "TriggerPanelView"

    const-string v2, "createUnselectedAnimation()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintBackgroundView:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->panelType:I

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->singleOptionsType:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    new-instance v3, Lcom/oplus/quickstep/rapidreaction/widget/c;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/oplus/quickstep/rapidreaction/widget/c;-><init>(Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;I)V

    const/16 v5, 0xa

    new-array v5, v5, [Landroid/view/View;

    iget-object v6, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenView:Landroid/view/View;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenSelectedView:Landroid/view/View;

    aput-object v6, v5, v4

    iget-object v4, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowView:Landroid/view/View;

    const/4 v6, 0x2

    aput-object v4, v5, v6

    iget-object v4, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowSelectedView:Landroid/view/View;

    const/4 v6, 0x3

    aput-object v4, v5, v6

    iget-object v4, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleExternalScreenView:Landroid/widget/TextView;

    const/4 v6, 0x4

    aput-object v4, v5, v6

    iget-object v4, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleExternalScreenSelectedView:Landroid/widget/TextView;

    const/4 v6, 0x5

    aput-object v4, v5, v6

    iget-object v4, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleFloatingWindowView:Landroid/widget/TextView;

    const/4 v6, 0x6

    aput-object v4, v5, v6

    iget-object v4, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleFloatingWindowSelectedView:Landroid/widget/TextView;

    const/4 v6, 0x7

    aput-object v4, v5, v6

    iget-object v4, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->iconExternalScreenView:Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

    const/16 v6, 0x8

    aput-object v4, v5, v6

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->iconFloatingWindowView:Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

    const/16 v4, 0x9

    aput-object p0, v5, v4

    invoke-static {v0, v1, v2, v3, v5}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->createUnselectedAnimator(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;ILcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;Ljava/util/function/Consumer;[Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method private static final createUnselectedAnimation$lambda-7(Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;Ljava/lang/Boolean;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isFirstSelect:Z

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->panelType:I

    const/4 v2, 0x2

    if-ne v1, v0, :cond_1b

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->singleOptionsType:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    sget-object v1, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;->FLOATING_WINDOW:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    if-ne p1, v1, :cond_19

    goto :goto_2b

    :cond_19
    :goto_19
    move v0, v2

    goto :goto_2b

    :cond_1b
    iget-boolean v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isRtl:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz v1, :cond_28

    if-nez p1, :cond_27

    move p1, v0

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    :cond_28
    :goto_28
    if-eqz p1, :cond_2b

    goto :goto_19

    :cond_2b
    :goto_2b
    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->recentsAnimator:Lkotlin/jvm/functions/Function4;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-wide/16 v1, 0x17f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, p1, p1, v0, v1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic getPanelType$annotations()V
    .registers 0

    return-void
.end method

.method private final initIcon()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->iconFloatingWindowView:Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080778

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v2, "context.getDrawable(R.dr…ion_floating_window_icon)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->iconExternalScreenView:Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f080777

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string v1, "context.getDrawable(R.dr…ion_external_srceen_icon)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final initViewContent()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleFloatingWindowView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1203a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleFloatingWindowSelectedView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1203a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleFloatingWindowSelectedView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleExternalScreenView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120384

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleExternalScreenSelectedView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1203c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleExternalScreenSelectedView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleFloatingWindowSelectedView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070a9a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleExternalScreenSelectedView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleExternalScreenView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleExternalScreenSelectedView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-direct {p0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->resetViewVisibility()V

    invoke-direct {p0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->resetViewAlpha()V

    invoke-direct {p0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->resetViewTranslation()V

    invoke-direct {p0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->initIcon()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private final layoutExternalScreenHintView()V
    .registers 20

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v3, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget-object v5, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenSelectedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget-object v6, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenSelectedView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->currentRotation:I

    const/4 v8, 0x2

    if-eqz v7, :cond_108

    const/4 v9, 0x1

    if-eq v7, v9, :cond_9b

    if-eq v7, v8, :cond_108

    const/4 v1, 0x3

    if-eq v7, v1, :cond_31

    goto/16 :goto_19f

    :cond_31
    sub-int v1, v4, v3

    div-int/2addr v1, v8

    iget v7, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->bgLandscapeTopOffset:F

    float-to-int v9, v7

    add-int/2addr v9, v1

    iget v10, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintIconMarginTop:F

    float-to-int v11, v10

    add-int/2addr v9, v11

    sub-int v11, v2, v4

    div-int/2addr v11, v8

    sub-int v12, v5, v6

    div-int/2addr v12, v8

    float-to-int v13, v7

    add-int/2addr v12, v13

    float-to-int v13, v10

    add-int/2addr v12, v13

    sub-int v13, v2, v6

    div-int/2addr v13, v8

    iget v14, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->panelType:I

    if-ne v14, v8, :cond_7f

    float-to-int v9, v7

    add-int/2addr v1, v9

    float-to-int v9, v10

    add-int/2addr v9, v1

    int-to-float v1, v2

    iget v2, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->doubleBgIntervalSize:F

    add-float v11, v1, v2

    iget v12, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->doubleBgWidth:F

    add-float/2addr v11, v12

    int-to-float v13, v4

    sub-float/2addr v11, v13

    int-to-float v14, v8

    div-float/2addr v11, v14

    float-to-int v11, v11

    sub-int v15, v6, v5

    div-int/2addr v15, v8

    float-to-int v7, v7

    add-int/2addr v15, v7

    float-to-int v7, v10

    add-int/2addr v7, v15

    add-float v8, v1, v2

    add-float/2addr v8, v12

    int-to-float v10, v6

    sub-float/2addr v8, v10

    div-float/2addr v8, v14

    float-to-int v8, v8

    iget-boolean v15, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isRtl:Z

    if-eqz v15, :cond_7d

    sub-float v8, v1, v2

    sub-float/2addr v8, v12

    sub-float/2addr v8, v13

    div-float/2addr v8, v14

    float-to-int v11, v8

    sub-float/2addr v1, v2

    sub-float/2addr v1, v12

    sub-float/2addr v1, v10

    div-float/2addr v1, v14

    float-to-int v13, v1

    move v12, v7

    goto :goto_7f

    :cond_7d
    move v12, v7

    move v13, v8

    :cond_7f
    :goto_7f
    iget-object v1, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenView:Landroid/view/View;

    add-int/2addr v3, v9

    add-int/2addr v4, v11

    invoke-virtual {v1, v9, v11, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget-object v1, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenSelectedView:Landroid/view/View;

    add-int/2addr v5, v12

    add-int/2addr v6, v13

    invoke-virtual {v1, v12, v13, v5, v6}, Landroid/view/View;->layout(IIII)V

    iget-object v1, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenView:Landroid/view/View;

    const/high16 v2, 0x43870000  # 270.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    iget-object v0, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenSelectedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_19f

    :cond_9b
    add-int v7, v3, v4

    div-int/2addr v7, v8

    sub-int v7, v1, v7

    iget v9, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->bgLandscapeTopOffset:F

    float-to-int v10, v9

    sub-int v10, v7, v10

    iget v11, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintIconMarginTop:F

    float-to-int v12, v11

    sub-int/2addr v10, v12

    sub-int v12, v2, v4

    div-int/2addr v12, v8

    add-int v13, v5, v6

    div-int/2addr v13, v8

    sub-int/2addr v1, v13

    float-to-int v13, v9

    sub-int v13, v1, v13

    float-to-int v14, v11

    sub-int/2addr v13, v14

    sub-int v14, v2, v6

    div-int/2addr v14, v8

    iget v15, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->panelType:I

    if-ne v15, v8, :cond_ec

    float-to-int v10, v9

    sub-int/2addr v7, v10

    float-to-int v10, v11

    sub-int v10, v7, v10

    int-to-float v2, v2

    iget v7, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->doubleBgIntervalSize:F

    sub-float v12, v2, v7

    iget v13, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->doubleBgWidth:F

    sub-float/2addr v12, v13

    int-to-float v14, v4

    sub-float/2addr v12, v14

    int-to-float v8, v8

    div-float/2addr v12, v8

    float-to-int v12, v12

    float-to-int v9, v9

    sub-int/2addr v1, v9

    float-to-int v9, v11

    sub-int/2addr v1, v9

    sub-float v9, v2, v7

    sub-float/2addr v9, v13

    int-to-float v11, v6

    sub-float/2addr v9, v11

    div-float/2addr v9, v8

    float-to-int v9, v9

    iget-boolean v15, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isRtl:Z

    if-eqz v15, :cond_ea

    add-float v9, v2, v7

    add-float/2addr v9, v13

    sub-float/2addr v9, v14

    div-float/2addr v9, v8

    float-to-int v12, v9

    add-float/2addr v2, v7

    add-float/2addr v2, v13

    sub-float/2addr v2, v11

    div-float/2addr v2, v8

    float-to-int v14, v2

    move v13, v1

    goto :goto_ec

    :cond_ea
    move v13, v1

    move v14, v9

    :cond_ec
    :goto_ec
    iget-object v1, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenView:Landroid/view/View;

    add-int/2addr v3, v10

    add-int/2addr v4, v12

    invoke-virtual {v1, v10, v12, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget-object v1, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenSelectedView:Landroid/view/View;

    add-int/2addr v5, v13

    add-int/2addr v6, v14

    invoke-virtual {v1, v13, v14, v5, v6}, Landroid/view/View;->layout(IIII)V

    iget-object v1, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenView:Landroid/view/View;

    const/high16 v2, 0x42b40000  # 90.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    iget-object v0, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenSelectedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_19f

    :cond_108
    iget v2, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->bgPortraitTopOffset:F

    iget v7, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintIconMarginTop:F

    add-float/2addr v2, v7

    sub-int v7, v1, v3

    div-int/2addr v7, v8

    add-int v9, v1, v3

    div-int/2addr v9, v8

    sub-int v10, v1, v5

    div-int/2addr v10, v8

    add-int v11, v1, v5

    div-int/2addr v11, v8

    iget v12, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->panelType:I

    if-ne v12, v8, :cond_157

    int-to-float v7, v1

    iget v9, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->doubleBgIntervalSize:F

    sub-float v10, v7, v9

    iget v11, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->doubleBgWidth:F

    sub-float/2addr v10, v11

    int-to-float v12, v3

    sub-float/2addr v10, v12

    int-to-float v8, v8

    div-float/2addr v10, v8

    float-to-int v10, v10

    add-int v13, v10, v3

    sub-float v14, v7, v9

    sub-float/2addr v14, v11

    int-to-float v15, v5

    sub-float/2addr v14, v15

    div-float/2addr v14, v8

    float-to-int v14, v14

    add-int v16, v14, v5

    move/from16 v17, v10

    iget-boolean v10, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isRtl:Z

    if-eqz v10, :cond_151

    add-float v10, v7, v9

    add-float/2addr v10, v11

    sub-float/2addr v10, v12

    div-float/2addr v10, v8

    float-to-int v10, v10

    add-int v12, v10, v3

    add-float/2addr v7, v9

    add-float/2addr v7, v11

    sub-float/2addr v7, v15

    div-float/2addr v7, v8

    float-to-int v7, v7

    add-int v11, v7, v5

    move v9, v12

    move/from16 v18, v10

    move v10, v7

    move/from16 v7, v18

    goto :goto_157

    :cond_151
    move v9, v13

    move v10, v14

    move/from16 v11, v16

    move/from16 v7, v17

    :cond_157
    :goto_157
    iget-object v8, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenView:Landroid/view/View;

    float-to-int v12, v2

    int-to-float v13, v4

    add-float/2addr v13, v2

    float-to-int v13, v13

    invoke-virtual {v8, v7, v12, v9, v13}, Landroid/view/View;->layout(IIII)V

    iget-object v8, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenSelectedView:Landroid/view/View;

    int-to-float v13, v6

    add-float/2addr v2, v13

    float-to-int v2, v2

    invoke-virtual {v8, v10, v12, v11, v2}, Landroid/view/View;->layout(IIII)V

    iget-object v2, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->setRotation(F)V

    iget-object v0, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenSelectedView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setRotation(F)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_19f

    const-string v0, "layoutExternalScreenHintView: width = "

    const-string v2, ", hintWidth = "

    const-string v8, ", hintLeft = "

    invoke-static {v0, v1, v2, v3, v8}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hintRight = "

    const-string v2, ", hintH = "

    invoke-static {v0, v7, v1, v9, v2}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, "\n hintSelectWidth = "

    const-string v2, ", hintSelectLeft = "

    invoke-static {v0, v4, v1, v5, v2}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", hintSelectRight = "

    const-string v2, ", hintTH = "

    invoke-static {v0, v10, v1, v11, v2}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, "QuickStep"

    const-string v2, "TriggerPanelView"

    invoke-static {v0, v6, v1, v2}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_19f
    :goto_19f
    return-void
.end method

.method private final layoutFloatingWindowHintView()V
    .registers 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v3, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget-object v5, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowSelectedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget-object v6, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowSelectedView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->currentRotation:I

    const/4 v8, 0x2

    if-eqz v7, :cond_105

    const/4 v9, 0x1

    if-eq v7, v9, :cond_98

    if-eq v7, v8, :cond_105

    const/4 v1, 0x3

    if-eq v7, v1, :cond_31

    goto/16 :goto_19b

    :cond_31
    sub-int v1, v4, v3

    div-int/2addr v1, v8

    iget v7, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->bgLandscapeTopOffset:F

    float-to-int v9, v7

    add-int/2addr v9, v1

    iget v10, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintIconMarginTop:F

    float-to-int v11, v10

    add-int/2addr v9, v11

    sub-int v11, v2, v4

    div-int/2addr v11, v8

    sub-int v12, v6, v5

    div-int/2addr v12, v8

    float-to-int v13, v7

    add-int/2addr v13, v12

    float-to-int v14, v10

    add-int/2addr v13, v14

    sub-int v14, v2, v6

    div-int/2addr v14, v8

    iget v15, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->panelType:I

    if-ne v15, v8, :cond_7c

    float-to-int v9, v7

    add-int/2addr v1, v9

    float-to-int v9, v10

    add-int/2addr v9, v1

    int-to-float v1, v2

    iget v2, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->doubleBgIntervalSize:F

    sub-float v11, v1, v2

    iget v13, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->doubleBgWidth:F

    sub-float/2addr v11, v13

    int-to-float v14, v4

    sub-float/2addr v11, v14

    int-to-float v8, v8

    div-float/2addr v11, v8

    float-to-int v11, v11

    float-to-int v7, v7

    add-int/2addr v12, v7

    float-to-int v7, v10

    add-int/2addr v7, v12

    sub-float v10, v1, v2

    sub-float/2addr v10, v13

    int-to-float v12, v6

    sub-float/2addr v10, v12

    div-float/2addr v10, v8

    float-to-int v10, v10

    iget-boolean v15, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isRtl:Z

    if-eqz v15, :cond_7a

    add-float v10, v1, v2

    add-float/2addr v10, v13

    sub-float/2addr v10, v14

    div-float/2addr v10, v8

    float-to-int v11, v10

    add-float/2addr v1, v2

    add-float/2addr v1, v13

    sub-float/2addr v1, v12

    div-float/2addr v1, v8

    float-to-int v14, v1

    move v13, v7

    goto :goto_7c

    :cond_7a
    move v13, v7

    move v14, v10

    :cond_7c
    :goto_7c
    iget-object v1, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowView:Landroid/view/View;

    add-int/2addr v3, v9

    add-int/2addr v4, v11

    invoke-virtual {v1, v9, v11, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget-object v1, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowSelectedView:Landroid/view/View;

    add-int/2addr v5, v13

    add-int/2addr v6, v14

    invoke-virtual {v1, v13, v14, v5, v6}, Landroid/view/View;->layout(IIII)V

    iget-object v1, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowView:Landroid/view/View;

    const/high16 v2, 0x43870000  # 270.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    iget-object v0, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowSelectedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_19b

    :cond_98
    add-int v7, v3, v4

    div-int/2addr v7, v8

    sub-int v7, v1, v7

    iget v9, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->bgLandscapeTopOffset:F

    float-to-int v10, v9

    sub-int v10, v7, v10

    iget v11, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintIconMarginTop:F

    float-to-int v12, v11

    sub-int/2addr v10, v12

    sub-int v12, v2, v4

    div-int/2addr v12, v8

    add-int v13, v5, v6

    div-int/2addr v13, v8

    sub-int/2addr v1, v13

    float-to-int v13, v9

    sub-int v13, v1, v13

    float-to-int v14, v11

    sub-int/2addr v13, v14

    sub-int v14, v2, v6

    div-int/2addr v14, v8

    iget v15, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->panelType:I

    if-ne v15, v8, :cond_e9

    float-to-int v10, v9

    sub-int/2addr v7, v10

    float-to-int v10, v11

    sub-int v10, v7, v10

    int-to-float v2, v2

    iget v7, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->doubleBgIntervalSize:F

    add-float v12, v2, v7

    iget v13, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->doubleBgWidth:F

    add-float/2addr v12, v13

    int-to-float v14, v4

    sub-float/2addr v12, v14

    int-to-float v8, v8

    div-float/2addr v12, v8

    float-to-int v12, v12

    float-to-int v9, v9

    sub-int/2addr v1, v9

    float-to-int v9, v11

    sub-int/2addr v1, v9

    add-float v9, v2, v7

    add-float/2addr v9, v13

    int-to-float v11, v6

    sub-float/2addr v9, v11

    div-float/2addr v9, v8

    float-to-int v9, v9

    iget-boolean v15, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isRtl:Z

    if-eqz v15, :cond_e7

    sub-float v9, v2, v7

    sub-float/2addr v9, v13

    sub-float/2addr v9, v14

    div-float/2addr v9, v8

    float-to-int v12, v9

    sub-float/2addr v2, v7

    sub-float/2addr v2, v13

    sub-float/2addr v2, v11

    div-float/2addr v2, v8

    float-to-int v14, v2

    move v13, v1

    goto :goto_e9

    :cond_e7
    move v13, v1

    move v14, v9

    :cond_e9
    :goto_e9
    iget-object v1, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowView:Landroid/view/View;

    add-int/2addr v3, v10

    add-int/2addr v4, v12

    invoke-virtual {v1, v10, v12, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget-object v1, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowSelectedView:Landroid/view/View;

    add-int/2addr v5, v13

    add-int/2addr v6, v14

    invoke-virtual {v1, v13, v14, v5, v6}, Landroid/view/View;->layout(IIII)V

    iget-object v1, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowView:Landroid/view/View;

    const/high16 v2, 0x42b40000  # 90.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    iget-object v0, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowSelectedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_19b

    :cond_105
    sub-int v2, v1, v3

    div-int/2addr v2, v8

    add-int v7, v1, v3

    div-int/2addr v7, v8

    sub-int v9, v1, v5

    div-int/2addr v9, v8

    add-int v10, v1, v5

    div-int/2addr v10, v8

    iget v11, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->panelType:I

    if-ne v11, v8, :cond_14e

    int-to-float v2, v1

    iget v7, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->doubleBgIntervalSize:F

    add-float v9, v2, v7

    iget v10, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->doubleBgWidth:F

    add-float/2addr v9, v10

    int-to-float v11, v3

    sub-float/2addr v9, v11

    int-to-float v8, v8

    div-float/2addr v9, v8

    float-to-int v9, v9

    add-int v12, v9, v3

    add-float v13, v2, v7

    add-float/2addr v13, v10

    int-to-float v14, v5

    sub-float/2addr v13, v14

    div-float/2addr v13, v8

    float-to-int v13, v13

    add-int v15, v13, v5

    move/from16 v16, v9

    iget-boolean v9, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isRtl:Z

    if-eqz v9, :cond_149

    sub-float v9, v2, v7

    sub-float/2addr v9, v10

    sub-float/2addr v9, v11

    div-float/2addr v9, v8

    float-to-int v9, v9

    add-int v11, v9, v3

    sub-float/2addr v2, v7

    sub-float/2addr v2, v10

    sub-float/2addr v2, v14

    div-float/2addr v2, v8

    float-to-int v2, v2

    add-int v10, v2, v5

    move v7, v11

    move/from16 v17, v9

    move v9, v2

    move/from16 v2, v17

    goto :goto_14e

    :cond_149
    move v7, v12

    move v9, v13

    move v10, v15

    move/from16 v2, v16

    :cond_14e
    :goto_14e
    iget v8, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->bgPortraitTopOffset:F

    iget v11, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintIconMarginTop:F

    add-float/2addr v8, v11

    iget-object v11, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowView:Landroid/view/View;

    float-to-int v12, v8

    int-to-float v13, v4

    add-float/2addr v13, v8

    float-to-int v13, v13

    invoke-virtual {v11, v2, v12, v7, v13}, Landroid/view/View;->layout(IIII)V

    iget-object v11, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowSelectedView:Landroid/view/View;

    int-to-float v13, v6

    add-float/2addr v8, v13

    float-to-int v8, v8

    invoke-virtual {v11, v9, v12, v10, v8}, Landroid/view/View;->layout(IIII)V

    iget-object v8, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowView:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/view/View;->setRotation(F)V

    iget-object v0, v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowSelectedView:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setRotation(F)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_19b

    const-string v0, "layoutFloatingWindowHintView: width = "

    const-string v8, ", hintWidth = "

    const-string v11, ", hintLeft = "

    invoke-static {v0, v1, v8, v3, v11}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hintRight = "

    const-string v3, ", hintH = "

    invoke-static {v0, v2, v1, v7, v3}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, "\n hintSelectWidth = "

    const-string v2, ", hintSelectLeft = "

    invoke-static {v0, v4, v1, v5, v2}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ", hintSelectRight = "

    const-string v2, ", hintTH = "

    invoke-static {v0, v9, v1, v10, v2}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, "QuickStep"

    const-string v2, "TriggerPanelView"

    invoke-static {v0, v6, v1, v2}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_19b
    :goto_19b
    return-void
.end method

.method private final onRotationChange(II)V
    .registers 8

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    move v0, p1

    goto :goto_13

    :cond_f
    :goto_f
    invoke-static {p2, p1}, Lcom/android/launcher3/states/RotationHelper;->deltaRotation(II)I

    move-result v0

    :goto_13
    const-string v1, "onRotationChange: rotation = "

    const-string v2, ", currentRotation = "

    invoke-static {v1, p1, v2}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->currentRotation:I

    const-string v3, ", viewRotation = "

    const-string v4, ", newRotation = "

    invoke-static {v1, v2, v3, p2, v4}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "TriggerPanelView"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->displayRotation:I

    if-eq p1, v1, :cond_40

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->displayRotation:I

    :cond_40
    iget p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->currentRotation:I

    if-eq p1, v0, :cond_53

    iput p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->currentAppRotation:I

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->currentRotation:I

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintBackgroundView:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->onRotationChange(I)V

    invoke-static {v0}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->onRotationChanged(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_53
    return-void
.end method

.method private final onRotationChangeIfNeed(II)V
    .registers 4

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->isAutoRotateOn()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->onRotationChange(II)V

    return-void
.end method

.method private final resetViewAlpha()V
    .registers 6

    const-string v0, "QuickStep"

    const-string v1, "TriggerPanelView"

    const-string v2, "resetViewAlpha()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleExternalScreenSelectedView:Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleFloatingWindowSelectedView:Landroid/widget/TextView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->setViewsAlpha(F[Landroid/view/View;)V

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenView:Landroid/view/View;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowView:Landroid/view/View;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleExternalScreenView:Landroid/widget/TextView;

    aput-object v2, v1, v0

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->titleFloatingWindowView:Landroid/widget/TextView;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->setViewsAlpha(F[Landroid/view/View;)V

    return-void
.end method

.method private final resetViewTranslation()V
    .registers 9

    const-string v0, "QuickStep"

    const-string v1, "TriggerPanelView"

    const-string v2, "resetViewTranslation()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const-string v1, "TRANSLATION_X"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    new-array v2, v1, [Landroid/view/View;

    iget-object v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowView:Landroid/view/View;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowSelectedView:Landroid/view/View;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenView:Landroid/view/View;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenSelectedView:Landroid/view/View;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v2}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->setViewsTranslation(FLandroid/util/Property;[Landroid/view/View;)V

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const-string v2, "TRANSLATION_Y"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowView:Landroid/view/View;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowSelectedView:Landroid/view/View;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenView:Landroid/view/View;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenSelectedView:Landroid/view/View;

    aput-object v2, v1, v7

    invoke-direct {p0, v3, v0, v1}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->setViewsTranslation(FLandroid/util/Property;[Landroid/view/View;)V

    return-void
.end method

.method private final resetViewVisibility()V
    .registers 5

    const-string v0, "QuickStep"

    const-string v1, "TriggerPanelView"

    const-string v2, "resetViewVisibility()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowView:Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowSelectedView:Landroid/view/View;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenView:Landroid/view/View;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenSelectedView:Landroid/view/View;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->setViewsVisibility(I[Landroid/view/View;)V

    return-void
.end method

.method private static final selectAnimRunnable$lambda-0(Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->createSelectAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_f

    :cond_c
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isSelectAnimationStarted:Z

    return-void
.end method

.method private final varargs setViewsAlpha(F[Landroid/view/View;)V
    .registers 7

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v0, "setViewsAlpha: alpha="

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "RapidReaction"

    const-string v1, "TriggerPanelView"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_14
    if-ge v1, p0, :cond_2c

    aget-object v2, p2, v1

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpg-float v3, v3, p1

    if-nez v3, :cond_22

    const/4 v3, 0x1

    goto :goto_23

    :cond_22
    move v3, v0

    :goto_23
    if-eqz v3, :cond_26

    goto :goto_29

    :cond_26
    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_2c
    return-void
.end method

.method private final varargs setViewsTranslation(FLandroid/util/Property;[Landroid/view/View;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    array-length p0, p3

    const/4 p1, 0x0

    :goto_2
    if-ge p1, p0, :cond_11

    aget-object v0, p3, p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_11
    return-void
.end method

.method private final varargs setViewsVisibility(I[Landroid/view/View;)V
    .registers 6

    array-length p0, p2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_13

    aget-object v1, p2, v0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, p1, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    return-void
.end method

.method private final updateViewStatus(ILcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;Z)V
    .registers 8

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateViewStatus: optionsType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", singleOptionsType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RapidReaction"

    const-string v2, "TriggerPanelView"

    invoke-static {v0, p3, v1, v2}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_27
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p3, :cond_2d

    move p3, v1

    goto :goto_2e

    :cond_2d
    move p3, v0

    :goto_2e
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_4c

    if-eq p1, v2, :cond_35

    goto :goto_85

    :cond_35
    new-array p1, v0, [Landroid/view/View;

    iget-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowView:Landroid/view/View;

    aput-object p2, p1, v1

    iget-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowSelectedView:Landroid/view/View;

    aput-object p2, p1, v3

    iget-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenView:Landroid/view/View;

    aput-object p2, p1, v2

    const/4 p2, 0x3

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenSelectedView:Landroid/view/View;

    aput-object v0, p1, p2

    invoke-direct {p0, p3, p1}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->setViewsVisibility(I[Landroid/view/View;)V

    goto :goto_85

    :cond_4c
    sget-object p1, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;->FLOATING_WINDOW:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    if-ne p2, p1, :cond_6b

    new-array p1, v2, [Landroid/view/View;

    iget-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowView:Landroid/view/View;

    aput-object p2, p1, v1

    iget-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowSelectedView:Landroid/view/View;

    aput-object p2, p1, v3

    invoke-direct {p0, p3, p1}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->setViewsVisibility(I[Landroid/view/View;)V

    new-array p1, v2, [Landroid/view/View;

    iget-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenView:Landroid/view/View;

    aput-object p2, p1, v1

    iget-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenSelectedView:Landroid/view/View;

    aput-object p2, p1, v3

    invoke-direct {p0, v0, p1}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->setViewsVisibility(I[Landroid/view/View;)V

    goto :goto_85

    :cond_6b
    new-array p1, v2, [Landroid/view/View;

    iget-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenView:Landroid/view/View;

    aput-object p2, p1, v1

    iget-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintExternalScreenSelectedView:Landroid/view/View;

    aput-object p2, p1, v3

    invoke-direct {p0, p3, p1}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->setViewsVisibility(I[Landroid/view/View;)V

    new-array p1, v2, [Landroid/view/View;

    iget-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowView:Landroid/view/View;

    aput-object p2, p1, v1

    iget-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintFloatingWindowSelectedView:Landroid/view/View;

    aput-object p2, p1, v3

    invoke-direct {p0, v0, p1}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->setViewsVisibility(I[Landroid/view/View;)V

    :goto_85
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const-string p0, "p0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getCurrentProgress()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->currentProgress:F

    return p0
.end method

.method public final initAnimation(Lkotlin/jvm/functions/Function4;ILcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Long;",
            "Ly2/p;",
            ">;I",
            "Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;",
            ")V"
        }
    .end annotation

    const-string v0, "recentsAnim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "singleOptionsType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initAnimation: optionsType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", singleOpType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "TriggerPanelView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->panelType:I

    iput p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->panelType:I

    iput-object p3, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->singleOptionsType:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->recentsAnimator:Lkotlin/jvm/functions/Function4;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isWindowAnimationStarted:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isFirstSelect:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v2

    iput-boolean v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isRtl:Z

    invoke-direct {p0, p2, p3, v1}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->updateViewStatus(ILcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;Z)V

    invoke-direct {p0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->resetViewAlpha()V

    invoke-direct {p0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->resetViewTranslation()V

    iget-object p3, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintBackgroundView:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    invoke-virtual {p3, p2}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->updatePanelType(I)V

    iget-boolean p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isRtl:Z

    invoke-static {p2}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->onLayoutDirectionChanged(Z)V

    invoke-direct {p0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->cancelEnterAnimation()V

    invoke-direct {p0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->createEnterAnimator()Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->enterAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object p2

    const-string p3, "enterAnimator!!.listeners"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/animation/Animator$AnimatorListener;

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->enterAnimator:Landroid/animation/ValueAnimator;

    invoke-interface {p3, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_6a

    :cond_7c
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-boolean p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->alreadyReset:Z

    iget p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->panelType:I

    if-eq v0, p1, :cond_88

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_88
    return-void
.end method

.method public final notifyWindowAnimationStateChange(Z)V
    .registers 5

    const-string v0, "notifyWindowAnimationStart: isStart = "

    const-string v1, "QuickStep"

    const-string v2, "TriggerPanelView"

    invoke-static {p1, v0, v1, v2}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isWindowAnimationStarted:Z

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const-string v0, "QuickStep"

    const-string v1, "TriggerPanelView"

    const-string v2, "onAttachedToWindow()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/DisplayController;->addChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isRtl:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const-string v0, "QuickStep"

    const-string v1, "TriggerPanelView"

    const-string v2, "onDetachedFromWindow()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/DisplayController;->removeChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    return-void
.end method

.method public onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .registers 6

    const-string p1, "info"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_2f

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_28

    const-string p1, "onDisplayInfoChanged: old rotation is "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->currentRotation:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", and new rotation: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p2, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    const-string v0, "QuickStep"

    const-string v1, "TriggerPanelView"

    invoke-static {p1, p3, v0, v1}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_28
    iget p1, p2, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    iget p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->currentAppRotation:I

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->onRotationChangeIfNeed(II)V

    :cond_2f
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 8

    const-string p1, "onLayout: "

    const-string v0, ", "

    invoke-static {p1, p2, v0, p3, v0}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickStep"

    const-string v1, "TriggerPanelView"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintBackgroundView:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    invoke-direct {p0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->layoutFloatingWindowHintView()V

    invoke-direct {p0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->layoutExternalScreenHintView()V

    return-void
.end method

.method public final refreshRotationIfNeed()V
    .registers 5

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->displayRotation:I

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->currentRotation:I

    if-eq v0, v1, :cond_4b

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    const-string v1, "refreshRotationIfNeed: displayRotation = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->displayRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , currentRotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->currentRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "TriggerPanelView"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->currentAppRotation:I

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->onRotationChangeIfNeed(II)V

    :cond_4b
    return-void
.end method

.method public final reset()V
    .registers 5

    const-string v0, "QuickStep"

    const-string v1, "TriggerPanelView"

    const-string v2, "reset()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->resetViewTranslation()V

    invoke-direct {p0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->resetViewVisibility()V

    invoke-direct {p0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->resetViewAlpha()V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->hintBackgroundView:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->reset$default(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;IILjava/lang/Object;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isRtl:Z

    iput-boolean v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isFirstSelect:Z

    iput-boolean v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isSelectAnimationStarted:Z

    iput-boolean v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->alreadyReset:Z

    return-void
.end method

.method public final resetIfNeed()V
    .registers 5

    iget-boolean v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->alreadyReset:Z

    const-string v1, "resetIfNeed: alreadyReset = "

    const-string v2, "QuickStep"

    const-string v3, "TriggerPanelView"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->alreadyReset:Z

    if-eqz v0, :cond_10

    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->reset()V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public final updateHorizontalOffset(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->centerPointHorizontalOffset:I

    return-void
.end method

.method public final updateProgress(F)V
    .registers 13

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->currentRotation:I

    const/4 v1, 0x3

    const v2, 0x3f733333  # 0.95f

    const/4 v3, 0x1

    if-eq v0, v3, :cond_10

    if-ne v0, v1, :cond_c

    goto :goto_10

    :cond_c
    const v1, 0x3f99999a  # 1.2f

    goto :goto_16

    :cond_10
    :goto_10
    const v1, 0x3f19999a  # 0.6f

    move v10, v2

    move v2, v1

    move v1, v10

    :goto_16
    const v4, 0x3f59999a  # 0.85f

    const/4 v5, 0x2

    if-eqz v0, :cond_21

    if-eq v0, v3, :cond_24

    if-eq v0, v5, :cond_21

    goto :goto_24

    :cond_21
    const v4, 0x3f933333  # 1.15f

    :cond_24
    :goto_24
    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/Utilities;->getProgress(FFF)F

    move-result v6

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v7

    if-eqz v7, :cond_66

    const-string v7, "updateProgress: progress = "

    const-string v8, ", p = "

    const-string v9, ", newProgress = "

    invoke-static {v7, p1, v8, v0, v9}, Lcom/android/launcher/pageindicators/e;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", startP = "

    const-string v8, ", endP = "

    invoke-static {v0, v6, v7, v2, v8}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", caller = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "TriggerPanelView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    cmpl-float v0, p1, v4

    const/4 v1, 0x0

    if-lez v0, :cond_ae

    iget-boolean v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isSelectAnimationStarted:Z

    if-eqz v0, :cond_73

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->panelType:I

    if-ne v0, v5, :cond_ae

    :cond_73
    iget-boolean v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isWindowAnimationStarted:Z

    if-nez v0, :cond_ae

    iget-boolean p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isFirstSelect:Z

    if-eqz p1, :cond_9b

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_82

    goto :goto_8c

    :cond_82
    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->selectAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_8c

    move p1, v3

    goto :goto_8d

    :cond_8c
    :goto_8c
    move p1, v1

    :goto_8d
    if-eqz p1, :cond_9b

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->selectAnimRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x96

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d0

    :cond_9b
    iget-boolean p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isSelectAnimationStarted:Z

    if-eqz p1, :cond_d0

    iget p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->panelType:I

    if-ne p1, v5, :cond_d0

    invoke-direct {p0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->createSelectAnimation()Landroid/animation/AnimatorSet;

    move-result-object p1

    if-nez p1, :cond_aa

    goto :goto_d0

    :cond_aa
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_d0

    :cond_ae
    cmpg-float p1, p1, v4

    if-gez p1, :cond_c4

    iget-boolean p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isSelectAnimationStarted:Z

    if-eqz p1, :cond_c4

    iget-boolean p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isWindowAnimationStarted:Z

    if-nez p1, :cond_c4

    invoke-direct {p0}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->createUnselectedAnimation()Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->isSelectAnimationStarted:Z

    goto :goto_d0

    :cond_c4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_cb

    goto :goto_d0

    :cond_cb
    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->selectAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_d0
    :goto_d0
    iget p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->currentProgress:F

    cmpg-float p1, p1, v6

    if-nez p1, :cond_d7

    goto :goto_d8

    :cond_d7
    move v3, v1

    :goto_d8
    if-nez v3, :cond_e4

    iput v6, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->currentProgress:F

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->enterAnimator:Landroid/animation/ValueAnimator;

    if-nez p0, :cond_e1

    goto :goto_e4

    :cond_e1
    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    :cond_e4
    :goto_e4
    return-void
.end method

.method public final updateRotationIfAppRotationChange(I)V
    .registers 4

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-direct {p0, v0, p1}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->onRotationChange(II)V

    const-string v0, "updateIfAppRotationChange: force update rotation to "

    const-string v1, "  currentRotation: "

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->currentRotation:I

    const-string v0, "QuickStep"

    const-string v1, "TriggerPanelView"

    invoke-static {p1, p0, v0, v1}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
