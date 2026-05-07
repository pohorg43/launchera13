.class public final Lcom/oplus/quickstep/views/OplusTaskHeaderView;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

.field private static final HEADER_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/oplus/quickstep/views/OplusTaskHeaderView;",
            ">;"
        }
    .end annotation
.end field

.field public static final MINI_WINDOW_DEFAULT_PKG:Ljava/lang/String; = "Default"

.field private static final TAG:Ljava/lang/String; = "OplusTaskHeaderView"

.field public static final WINDOWING_MODE_BRACKET:I = 0x73

.field private static allowResizeableInSetting:Z

.field private static canMiniMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static canSplitMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static compatibleModeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static miniWindowName:Ljava/lang/String;

.field private static miniWindowTaskId:I

.field private static parallelVersionMode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static toolTipsDisable:Z


# instance fields
.field public lockIcon:Lcom/android/quickstep/views/OplusIconView;

.field private lockIconMargin:I

.field private final mCloneStr$delegate:Ly2/e;

.field private mToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

.field public menuBtn:Landroid/widget/ImageButton;

.field public miniWindowBtn:Landroid/widget/ImageButton;

.field public scaleToBigBtn:Landroid/widget/ImageButton;

.field public scaleToSmallBtn:Landroid/widget/ImageButton;

.field public splitWindowBtn:Landroid/widget/ImageButton;

.field public taskIcon:Lcom/android/quickstep/views/OplusIconView;

.field private textMargin:I

.field public titleTv:Landroid/widget/TextView;

.field private final tmpBuilder:Ljava/lang/StringBuilder;

.field private totalWidthWithoutText:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    const/4 v0, -0x1

    sput v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowTaskId:I

    const-string v0, "Default"

    sput-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowName:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->allowResizeableInSetting:Z

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->compatibleModeMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->parallelVersionMode:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canMiniMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    new-instance v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion$HEADER_ALPHA$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion$HEADER_ALPHA$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->HEADER_ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object p2, Ly2/g;->c:Ly2/g;

    new-instance p3, Lcom/oplus/quickstep/views/OplusTaskHeaderView$mCloneStr$2;

    invoke-direct {p3, p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$mCloneStr$2;-><init>(Lcom/oplus/quickstep/views/OplusTaskHeaderView;)V

    invoke-static {p2, p3}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mCloneStr$delegate:Ly2/e;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->tmpBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070640

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070288

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->textMargin:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_b

    move p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    move p4, v0

    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setShortCutIcon$lambda-3(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getAllowResizeableInSetting$cp()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->allowResizeableInSetting:Z

    return v0
.end method

.method public static final synthetic access$getCanMiniMap$cp()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canMiniMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$getCanSplitMap$cp()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$getCompatibleModeMap$cp()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->compatibleModeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$getHEADER_ALPHA$cp()Landroid/util/FloatProperty;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->HEADER_ALPHA:Landroid/util/FloatProperty;

    return-object v0
.end method

.method public static final synthetic access$getMiniWindowName$cp()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowName:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getMiniWindowTaskId$cp()I
    .registers 1

    sget v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowTaskId:I

    return v0
.end method

.method public static final synthetic access$getParallelVersionMode$cp()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->parallelVersionMode:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$getToolTipsDisable$cp()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->toolTipsDisable:Z

    return v0
.end method

.method public static final synthetic access$setAllowResizeableInSetting$cp(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->allowResizeableInSetting:Z

    return-void
.end method

.method public static final synthetic access$setCanMiniMap$cp(Ljava/util/HashMap;)V
    .registers 1

    sput-object p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canMiniMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$setCanSplitMap$cp(Ljava/util/HashMap;)V
    .registers 1

    sput-object p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$setCompatibleModeMap$cp(Ljava/util/HashMap;)V
    .registers 1

    sput-object p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->compatibleModeMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$setMiniWindowName$cp(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowName:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setMiniWindowTaskId$cp(I)V
    .registers 1

    sput p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowTaskId:I

    return-void
.end method

.method public static final synthetic access$setParallelVersionMode$cp(Ljava/util/HashMap;)V
    .registers 1

    sput-object p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->parallelVersionMode:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$setToolTipsDisable$cp(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->toolTipsDisable:Z

    return-void
.end method

.method public static synthetic b(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showCompatibleModeIcon$lambda-4(Landroid/view/View;)V

    return-void
.end method

.method private final getMCloneStr()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mCloneStr$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final hideWindowIcon(Landroid/view/View;)V
    .registers 3

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_17
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final isCanSplitWindow(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 4

    iget-boolean p0, p2, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    if-eqz p0, :cond_15

    sget-object p0, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->INSTANCE:Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const-string v0, "task.key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->isSplitScreenAvailable(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method private final labelFromPm(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_6
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    goto :goto_1f

    :catchall_1a
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1f
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_26

    goto :goto_35

    :cond_26
    const-string p0, "labelFromPm, e="

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string v0, "OplusTaskHeaderView"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    :goto_35
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_3c

    check-cast p0, Ljava/lang/String;

    goto :goto_3d

    :cond_3c
    const/4 p0, 0x0

    :goto_3d
    if-nez p0, :cond_41

    const-string p0, ""

    :cond_41
    return-object p0
.end method

.method private final replaceTitleIfNeeded(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;
    .registers 10

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x3e7

    if-ne v0, v3, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v4

    const-string v5, ""

    if-nez v4, :cond_1a

    goto :goto_22

    :cond_1a
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_21

    goto :goto_22

    :cond_21
    move-object v5, v4

    :goto_22
    invoke-virtual {v3, v5}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->isRedundantTask(Ljava/lang/String;)Z

    move-result v3

    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object v4

    iget-object v5, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v6, 0x0

    if-nez v5, :cond_31

    move-object v5, v6

    goto :goto_35

    :cond_31
    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v5

    :goto_35
    invoke-virtual {v4, v5}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getRenameAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_5b

    if-nez v3, :cond_5b

    sget-object v1, Lcom/oplus/quickstep/utils/OplusTaskUtils;->INSTANCE:Lcom/oplus/quickstep/utils/OplusTaskUtils;

    invoke-virtual {v1, p1}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->isUseMultiAppletsTitle(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v4, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    goto/16 :goto_cf

    :cond_49
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_cf

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMCloneStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_cf

    :cond_5b
    const-string v5, " - "

    if-nez v0, :cond_83

    if-eqz v3, :cond_80

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->labelFromPm(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_6c

    goto :goto_6d

    :cond_6c
    move v1, v2

    :goto_6d
    if-eqz v1, :cond_72

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    goto :goto_b9

    :cond_72
    invoke-static {v4, v5}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_b9

    :cond_80
    iget-object v4, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    goto :goto_cf

    :cond_83
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_bb

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->labelFromPm(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_94

    goto :goto_95

    :cond_94
    move v1, v2

    :goto_95
    if-eqz v1, :cond_a2

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMCloneStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_b9

    :cond_a2
    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMCloneStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_b9
    move-object v4, p1

    goto :goto_cf

    :cond_bb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_cf
    :goto_cf
    if-nez v4, :cond_d2

    goto :goto_ee

    :cond_d2
    const-string p1, "replaceTitleIfNeeded(), isMultiApp="

    const-string v1, ", isRedundant="

    const-string v2, ", title="

    invoke-static {p1, v0, v1, v3, v2}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickStep"

    const-string v1, "OplusTaskHeaderView"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->uniformBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_ee
    return-object v6
.end method

.method private static final setShortCutIcon$lambda-3(Landroid/view/View;)V
    .registers 1

    return-void
.end method

.method private final showCOUIToolTips(Landroid/widget/ImageButton;Lcom/android/quickstep/views/TaskView;)V
    .registers 8

    sget-boolean v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->toolTipsDisable:Z

    if-nez v0, :cond_d6

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    const/4 v1, 0x1

    if-nez v0, :cond_b

    move v0, v1

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    :goto_f
    if-nez v0, :cond_d6

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    if-nez v0, :cond_19

    goto/16 :goto_d6

    :cond_19
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type com.android.quickstep.views.OplusRecentsViewImpl<*, *>"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    cmpg-float v2, v2, v3

    const/4 v4, 0x0

    if-nez v2, :cond_31

    move v2, v1

    goto :goto_32

    :cond_31
    move v2, v4

    :goto_32
    if-eqz v2, :cond_a4

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpg-float v2, v2, v3

    if-nez v2, :cond_42

    move v2, v1

    goto :goto_43

    :cond_42
    move v2, v4

    :goto_43
    if-eqz v2, :cond_a4

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getClearAllButtonAlpha()F

    move-result v2

    cmpg-float v2, v2, v3

    if-nez v2, :cond_4f

    move v2, v1

    goto :goto_50

    :cond_4f
    move v2, v4

    :goto_50
    if-eqz v2, :cond_a4

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    cmpg-float v2, v2, v3

    if-nez v2, :cond_63

    move v2, v1

    goto :goto_64

    :cond_63
    move v2, v4

    :goto_64
    if-eqz v2, :cond_a4

    sget-object v2, Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils;->Companion:Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils$Companion;

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils$Companion;->getShowRecentToolTips()Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    if-eqz v2, :cond_a4

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a4

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isScrolling()Z

    move-result p2

    if-nez p2, :cond_a4

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/oplus/quickstep/dock/DockView;->isScrolling()Z

    move-result p2

    if-nez p2, :cond_a4

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/oplus/quickstep/dock/DockView;->isEnterAnimatorRunning()Z

    move-result p2

    if-nez p2, :cond_a4

    sget-boolean p2, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isEnterStateAnimRunning:Z

    if-nez p2, :cond_a4

    move p2, v1

    goto :goto_a5

    :cond_a4
    move p2, v4

    :goto_a5
    if-eqz p2, :cond_d6

    iget-object p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-nez p2, :cond_ac

    goto :goto_af

    :cond_ac
    invoke-virtual {p2, v1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setDismissOnTouchOutside(Z)V

    :goto_af
    iget-object p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-nez p2, :cond_b4

    goto :goto_c2

    :cond_b4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f12042a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    :goto_c2
    iget-object p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-nez p2, :cond_c7

    goto :goto_ca

    :cond_c7
    invoke-virtual {p2, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    :goto_ca
    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-nez p0, :cond_cf

    goto :goto_d4

    :cond_cf
    const/16 p2, 0x80

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;I)V

    :goto_d4
    sput-boolean v1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->toolTipsDisable:Z

    :cond_d6
    :goto_d6
    return-void
.end method

.method private final showCompatibleModeIcon(Lcom/android/quickstep/views/TaskView;Ljava/lang/String;Z)V
    .registers 7

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_83

    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->parallelVersionMode:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->parallelVersionMode:Ljava/util/HashMap;

    invoke-static {v0, p2}, Lz2/c0;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    sget-object v1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->compatibleModeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    if-nez p3, :cond_78

    if-nez v0, :cond_78

    const-string p3, "taskPackageName: "

    const-string v0, "  "

    invoke-static {p3, p2, v0}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->compatibleModeMap:Ljava/util/HashMap;

    invoke-static {v0, p2}, Lz2/c0;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "OplusTaskHeaderView"

    invoke-static {v0, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_55

    goto :goto_5c

    :cond_55
    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v0, :cond_5a

    goto :goto_5c

    :cond_5a
    iget v1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    :goto_5c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p2, v1, v0}, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->compatibleModeMap:Ljava/util/HashMap;

    invoke-static {v0, p2}, Lz2/c0;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-direct {p0, p2, p3, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showScaleChangeBtn(ILandroid/view/View$OnClickListener;Lcom/android/quickstep/views/TaskView;)V

    goto :goto_83

    :cond_78
    sget-object p2, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->CompatibleModeDismiss:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    invoke-virtual {p2}, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->getCompatibleModeValue()I

    move-result p2

    sget-object p3, Lcom/android/launcher/views/b;->d:Lcom/android/launcher/views/b;

    invoke-direct {p0, p2, p3, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showScaleChangeBtn(ILandroid/view/View$OnClickListener;Lcom/android/quickstep/views/TaskView;)V

    :cond_83
    :goto_83
    return-void
.end method

.method private static final showCompatibleModeIcon$lambda-4(Landroid/view/View;)V
    .registers 1

    return-void
.end method

.method private final showFloatWindowIcon(Lcom/android/quickstep/views/TaskView;Ljava/lang/String;Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V
    .registers 5

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    :cond_9
    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canMiniMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canMiniMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Lz2/c0;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2c

    new-instance p1, Lcom/oplus/quickstep/shortcuts/OplusFloatingWindowShortcut;

    invoke-direct {p1, p3, p4}, Lcom/oplus/quickstep/shortcuts/OplusFloatingWindowShortcut;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showWindowIcon(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_59

    :cond_2c
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    goto :goto_59

    :cond_34
    sget-object p1, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->FLOAT_WINDOW:Lcom/android/quickstep/TaskShortcutFactory;

    invoke-interface {p1, p3, p4}, Lcom/android/quickstep/TaskShortcutFactory;->getShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p1

    if-eqz p1, :cond_4b

    sget-object p3, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canMiniMap:Ljava/util/HashMap;

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showWindowIcon(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_59

    :cond_4b
    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canMiniMap:Ljava/util/HashMap;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    :goto_59
    return-void
.end method

.method private final showScaleChangeBtn(ILandroid/view/View$OnClickListener;Lcom/android/quickstep/views/TaskView;)V
    .registers 5

    sget-object v0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->CompatibleModeDismiss:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->getCompatibleModeValue()I

    move-result v0

    if-ne p1, v0, :cond_17

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    goto :goto_70

    :cond_17
    sget-object v0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->CompatibleModeFullScreen:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->getCompatibleModeValue()I

    move-result v0

    if-ne p1, v0, :cond_35

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showWindowIcon(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showCOUIToolTips(Landroid/widget/ImageButton;Lcom/android/quickstep/views/TaskView;)V

    goto :goto_70

    :cond_35
    sget-object v0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->CompatibleModeSixteenNine:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->getCompatibleModeValue()I

    move-result v0

    if-ne p1, v0, :cond_53

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showWindowIcon(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showCOUIToolTips(Landroid/widget/ImageButton;Lcom/android/quickstep/views/TaskView;)V

    goto :goto_70

    :cond_53
    sget-object v0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->CompatibleModeFourThree:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->getCompatibleModeValue()I

    move-result v0

    if-ne p1, v0, :cond_70

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showWindowIcon(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showCOUIToolTips(Landroid/widget/ImageButton;Lcom/android/quickstep/views/TaskView;)V

    :cond_70
    :goto_70
    return-void
.end method

.method private final showSplitWindowIcon(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;ZLcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V
    .registers 9

    sget-boolean p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->allowResizeableInSetting:Z

    if-eqz p1, :cond_a2

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_a

    :cond_8
    move v1, v0

    goto :goto_f

    :cond_a
    iget-boolean v1, p2, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    if-nez v1, :cond_8

    move v1, p1

    :goto_f
    if-eqz v1, :cond_13

    goto/16 :goto_a2

    :cond_13
    if-eqz p4, :cond_22

    sget-object v1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    sget-object v1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    sget-object v1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    invoke-static {p1, p3}, Lz2/c0;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_47

    if-nez p4, :cond_47

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object p1

    new-instance p2, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;

    invoke-direct {p2, p5, p6}, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showWindowIcon(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_93

    :cond_47
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    goto :goto_93

    :cond_4f
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p5, p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->isCanSplitWindow(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v1

    if-eqz v1, :cond_61

    sget-object v1, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->SPLIT_SCREEN:Lcom/android/quickstep/TaskShortcutFactory;

    invoke-interface {v1, p5, p6}, Lcom/android/quickstep/TaskShortcutFactory;->getShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object v1

    if-eqz v1, :cond_61

    goto :goto_62

    :cond_61
    move p1, v0

    :goto_62
    invoke-virtual {p2, p1}, Lcom/android/systemui/shared/recents/model/Task;->setCanSplitWindow(Z)V

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task;->isCanSplitWindow()Z

    move-result p1

    if-eqz p1, :cond_85

    if-nez p4, :cond_85

    sget-object p1, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->SPLIT_SCREEN:Lcom/android/quickstep/TaskShortcutFactory;

    invoke-interface {p1, p5, p6}, Lcom/android/quickstep/TaskShortcutFactory;->getShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p1

    if-nez p1, :cond_76

    return-void

    :cond_76
    sget-object p2, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    sget-object p5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showWindowIcon(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_93

    :cond_85
    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    :goto_93
    if-eqz p4, :cond_a2

    sget-object p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    invoke-virtual {p0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    sget-object p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    invoke-virtual {p0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a2
    :goto_a2
    return-void
.end method

.method private final showWindowIcon(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getAlpha()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private final showWindowIcon(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showWindowIcon(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final uniformBlank(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    if-eqz p0, :cond_1b

    const-string p0, "\t|\n\n"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1b
    return-object p1
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public final getLockIcon()Lcom/android/quickstep/views/OplusIconView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIcon:Lcom/android/quickstep/views/OplusIconView;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "lockIcon"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMToolTips()Lcom/coui/appcompat/tooltips/COUIToolTips;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-object p0
.end method

.method public final getMenuBtn()Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->menuBtn:Landroid/widget/ImageButton;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "menuBtn"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMiniWindowBtn()Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowBtn:Landroid/widget/ImageButton;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "miniWindowBtn"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getScaleToBigBtn()Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->scaleToBigBtn:Landroid/widget/ImageButton;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "scaleToBigBtn"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getScaleToSmallBtn()Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->scaleToSmallBtn:Landroid/widget/ImageButton;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "scaleToSmallBtn"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSplitWindowBtn()Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->splitWindowBtn:Landroid/widget/ImageButton;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "splitWindowBtn"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTaskIcon()Lcom/android/quickstep/views/OplusIconView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->taskIcon:Lcom/android/quickstep/views/OplusIconView;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "taskIcon"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTitleTv()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->titleTv:Landroid/widget/TextView;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "titleTv"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final hideCOUIToolTips()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    :goto_a
    if-nez v0, :cond_10

    sget-boolean v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->toolTipsDisable:Z

    if-eqz v0, :cond_18

    :cond_10
    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-nez p0, :cond_15

    goto :goto_18

    :cond_15
    invoke-virtual {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismiss()V

    :cond_18
    :goto_18
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 14

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroid/widget/TextView;

    const-string v1, "OplusTaskHeaderView"

    const-string v2, "QuickStep"

    if-eqz v0, :cond_3a

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    iget v4, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->totalWidthWithoutText:I

    sub-int v4, v3, v4

    invoke-static {v4, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v5

    if-eqz v5, :cond_39

    const-string v5, "measureChildWithMargins: widthSize = "

    const-string v6, ", widthMode = "

    const-string v7, ", totalWidth = "

    invoke-static {v5, v3, v6, p2, v7}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v3, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->totalWidthWithoutText:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v1, p2}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    move p2, v4

    :cond_3a
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    iget p3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v4, p3}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result p2

    iget p3, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v4, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    add-int/2addr p3, v4

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v4

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, v4

    add-int/2addr p3, p5

    iget p5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, p3, p5}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    if-nez v0, :cond_97

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, p2

    iget p2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->totalWidthWithoutText:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->totalWidthWithoutText:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p2

    if-eqz p2, :cond_97

    const-string p2, "measureChildWithMargins: sw = "

    const-string p3, ", totalWidthWithoutText = "

    invoke-static {p2, p1, p3}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->totalWidthWithoutText:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    return-void
.end method

.method public onFinishInflate()V
    .registers 4

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0a03a2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.oplus_task_header_app_icon)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusIconView;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setTaskIcon(Lcom/android/quickstep/views/OplusIconView;)V

    const v0, 0x7f0a03a7

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.oplus_task_header_title_view)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setTitleTv(Landroid/widget/TextView;)V

    const v0, 0x7f0a03a4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.oplus_task_header_lock_icon)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/OplusIconView;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setLockIcon(Lcom/android/quickstep/views/OplusIconView;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_42

    const/4 v1, 0x0

    goto :goto_49

    :cond_42
    const v2, 0x7f08072f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_49
    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusIconView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a03a6

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.oplus_task_header_split_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setSplitWindowBtn(Landroid/widget/ImageButton;)V

    const v0, 0x7f0a03a3

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.oplus_task_header_float_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setMiniWindowBtn(Landroid/widget/ImageButton;)V

    const v0, 0x7f0a03a8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.oplus_task_header_to_big_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setScaleToBigBtn(Landroid/widget/ImageButton;)V

    const v0, 0x7f0a03a9

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.oplus_…k_header_to_small_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setScaleToSmallBtn(Landroid/widget/ImageButton;)V

    const v0, 0x7f0a03a5

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.oplus_task_header_menu_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setMenuBtn(Landroid/widget/ImageButton;)V

    :try_start_a1
    new-instance v0, Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setMToolTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_af
    .catchall {:try_start_a1 .. :try_end_af} :catchall_b0

    goto :goto_b5

    :catchall_b0
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_b5
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_bc

    goto :goto_c3

    :cond_bc
    const-string v0, "COUIToolTips(context) : e"

    const-string v1, "OplusTaskHeaderView"

    invoke-static {p0, v0, v1}, Lcom/android/common/util/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_c3
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 8

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p1

    if-eqz p1, :cond_10b

    const-string p1, "onLayout: rtl = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "\ntv = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getLeft()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->getTop()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->getRight()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->getBottom()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\nlock = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\ntaskIcon = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\nmenu = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ImageButton;->getLeft()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ImageButton;->getTop()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ImageButton;->getRight()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getBottom()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QuickStep"

    const-string p3, "OplusTaskHeaderView"

    invoke-static {p2, p3, p1}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result p1

    if-nez p1, :cond_22d

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    iget p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->textMargin:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->getTop()I

    move-result p3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/TextView;->getBottom()I

    move-result p5

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    iget p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconMargin:I

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getRight()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p2

    if-nez p2, :cond_182

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    :cond_182
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p2

    if-nez p2, :cond_195

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    :cond_195
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result p2

    sub-int p2, p1, p2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result p3

    sub-int p3, p2, p3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object p4

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/ImageButton;->getTop()I

    move-result p5

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getBottom()I

    move-result v1

    invoke-virtual {p4, p1, p5, v0, v1}, Landroid/widget/ImageButton;->layout(IIII)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object p4

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/ImageButton;->getTop()I

    move-result p5

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getBottom()I

    move-result v1

    invoke-virtual {p4, p1, p5, v0, v1}, Landroid/widget/ImageButton;->layout(IIII)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object p4

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/ImageButton;->getTop()I

    move-result p5

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBottom()I

    move-result v0

    invoke-virtual {p4, p2, p5, p1, v0}, Landroid/widget/ImageButton;->layout(IIII)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p4

    if-eqz p4, :cond_213

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result p2

    sub-int p3, p1, p2

    goto :goto_214

    :cond_213
    move p1, p2

    :goto_214
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object p2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/ImageButton;->getTop()I

    move-result p4

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getBottom()I

    move-result p0

    invoke-virtual {p2, p3, p4, p1, p0}, Landroid/widget/ImageButton;->layout(IIII)V

    goto/16 :goto_331

    :cond_22d
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->textMargin:I

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p3

    sub-int p3, p1, p3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/TextView;->getTop()I

    move-result p4

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/TextView;->getBottom()I

    move-result p5

    invoke-virtual {p2, p3, p4, p1, p5}, Landroid/widget/TextView;->layout(IIII)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    move-result p1

    iget p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIconMargin:I

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int p3, p1, p3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p5

    invoke-virtual {p2, p3, p4, p1, p5}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getRight()I

    move-result p1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p2

    if-nez p2, :cond_2a0

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p1, p2

    :cond_2a0
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p2

    if-nez p2, :cond_2b3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p1, p2

    :cond_2b3
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object p4

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/ImageButton;->getRight()I

    move-result p5

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getBottom()I

    move-result v1

    invoke-virtual {p4, p5, v0, p1, v1}, Landroid/widget/ImageButton;->layout(IIII)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object p4

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/ImageButton;->getRight()I

    move-result p5

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getBottom()I

    move-result v1

    invoke-virtual {p4, p5, v0, p1, v1}, Landroid/widget/ImageButton;->layout(IIII)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object p4

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/ImageButton;->getTop()I

    move-result p5

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBottom()I

    move-result v0

    invoke-virtual {p4, p1, p5, p2, v0}, Landroid/widget/ImageButton;->layout(IIII)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/ImageButton;->getTop()I

    move-result p4

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getBottom()I

    move-result p0

    invoke-virtual {p1, p2, p4, p3, p0}, Landroid/widget/ImageButton;->layout(IIII)V

    :goto_331
    return-void
.end method

.method public onMeasure(II)V
    .registers 8

    const-wide/16 v0, 0x8

    const-string v2, "OplusTaskHeaderView#onMeasure"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x40000000  # 2.0f

    if-ne v2, v4, :cond_19

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eq v2, v4, :cond_17

    goto :goto_19

    :cond_17
    move v2, v3

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v2, 0x1

    :goto_1a
    iput v3, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->totalWidthWithoutText:I

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p1

    if-eqz p1, :cond_c3

    const-string p1, "onMeasure: title = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\nmeasureMatchParentChildren = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "\ntaskIcon = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nlockIcon = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\ntitleTv = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nmenuBtn = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string p2, "OplusTaskHeaderView"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c3
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final reset()V
    .registers 2

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusIconView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setIcon(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/views/TaskView;)V
    .registers 4

    const-string v0, "taskView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_c

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setShortCutIcon(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/views/TaskView;)V

    return-void
.end method

.method public final setLockIcon(Lcom/android/quickstep/views/OplusIconView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->lockIcon:Lcom/android/quickstep/views/OplusIconView;

    return-void
.end method

.method public final setLockIconAlpha(F)V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final setMToolTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->mToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-void
.end method

.method public final setMenuBtn(Landroid/widget/ImageButton;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->menuBtn:Landroid/widget/ImageButton;

    return-void
.end method

.method public final setMiniWindowBtn(Landroid/widget/ImageButton;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowBtn:Landroid/widget/ImageButton;

    return-void
.end method

.method public final setScaleToBigBtn(Landroid/widget/ImageButton;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->scaleToBigBtn:Landroid/widget/ImageButton;

    return-void
.end method

.method public final setScaleToSmallBtn(Landroid/widget/ImageButton;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->scaleToSmallBtn:Landroid/widget/ImageButton;

    return-void
.end method

.method public final setShortCutAlpha(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMenuBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToSmallBtn()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getScaleToBigBtn()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    return-void
.end method

.method public final setShortCutIcon(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/views/TaskView;)V
    .registers 15

    const-string v0, "taskView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_16d

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_16d

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    if-eqz v0, :cond_16d

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1c
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_20
    const-string v1, ""

    if-nez v0, :cond_25

    move-object v0, v1

    :cond_25
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2d

    move-object v6, v1

    goto :goto_2e

    :cond_2d
    move-object v6, v2

    :goto_2e
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_38

    move v1, v2

    goto :goto_39

    :cond_38
    move v1, v3

    :goto_39
    if-nez v1, :cond_16d

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_43

    move v1, v2

    goto :goto_44

    :cond_43
    move v1, v3

    :goto_44
    if-nez v1, :cond_16d

    instance-of v1, p2, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-eqz v1, :cond_4c

    goto/16 :goto_16d

    :cond_4c
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/launcher3/BaseDraggingActivity;

    sget-object v1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowName:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    sget-object v1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowName:Ljava/lang/String;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    :cond_67
    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v1, :cond_6c

    goto :goto_74

    :cond_6c
    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    const/16 v4, 0x64

    if-ne v1, v4, :cond_74

    move v1, v2

    goto :goto_75

    :cond_74
    :goto_74
    move v1, v3

    :goto_75
    if-eqz v1, :cond_79

    move v7, v2

    goto :goto_7a

    :cond_79
    move v7, v3

    :goto_7a
    instance-of v1, v8, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_82

    move-object v1, v8

    check-cast v1, Lcom/android/launcher/Launcher;

    goto :goto_83

    :cond_82
    const/4 v1, 0x0

    :goto_83
    if-nez v1, :cond_87

    move v1, v3

    goto :goto_8b

    :cond_87
    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->isInSplitScreenMode()Z

    move-result v1

    :goto_8b
    iget-object v4, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v4, :cond_90

    goto :goto_98

    :cond_90
    iget v5, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->displayId:I

    if-eqz v5, :cond_9a

    const/4 v9, -0x1

    if-ne v5, v9, :cond_98

    goto :goto_9a

    :cond_98
    :goto_98
    move v5, v3

    goto :goto_9b

    :cond_9a
    :goto_9a
    move v5, v2

    :goto_9b
    if-nez v4, :cond_9e

    goto :goto_a5

    :cond_9e
    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    const/16 v9, 0x73

    if-ne v4, v9, :cond_a5

    goto :goto_a6

    :cond_a5
    :goto_a5
    move v2, v3

    :goto_a6
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    const-string v10, "OplusTaskHeaderView"

    if-eqz v4, :cond_e4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setShortCutIcon(), task="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", inMini="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", miniName="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", inSplit="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", pkg="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", basePkg="

    const-string v11, ", bracket="

    invoke-static {v4, v0, v9, v6, v11}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v2, v10}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_e4
    if-nez v1, :cond_154

    if-nez v2, :cond_154

    if-nez v5, :cond_eb

    goto :goto_154

    :cond_eb
    invoke-direct {p0, p2, v6, v7}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showCompatibleModeIcon(Lcom/android/quickstep/views/TaskView;Ljava/lang/String;Z)V

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object v1

    aget-object v9, v1, v3

    const-string v1, "activity"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "taskIdAttributeContainer"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, v6, v8, v9}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showFloatWindowIcon(Lcom/android/quickstep/views/TaskView;Ljava/lang/String;Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v3 .. v9}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showSplitWindowIcon(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;ZLcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p0

    if-eqz p0, :cond_16d

    const-string p0, "taskPackageName: "

    const-string p1, ", parallelVersionMode="

    invoke-static {p0, v0, p1}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->parallelVersionMode:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", canSplitMap="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canSplitMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", canMiniMap="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->canMiniMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", miniWindowName="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->miniWindowName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", toolTipsDisable="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->toolTipsDisable:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", compatibleModeMap="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->compatibleModeMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16d

    :cond_154
    :goto_154
    sget-object p1, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->CompatibleModeDismiss:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->getCompatibleModeValue()I

    move-result p1

    sget-object v0, Ld0/a;->c:Ld0/a;

    invoke-direct {p0, p1, v0, p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->showScaleChangeBtn(ILandroid/view/View$OnClickListener;Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getMiniWindowBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getSplitWindowBtn()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->hideWindowIcon(Landroid/view/View;)V

    :cond_16d
    :goto_16d
    return-void
.end method

.method public final setSplitWindowBtn(Landroid/widget/ImageButton;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->splitWindowBtn:Landroid/widget/ImageButton;

    return-void
.end method

.method public final setTaskIcon(Lcom/android/quickstep/views/OplusIconView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->taskIcon:Lcom/android/quickstep/views/OplusIconView;

    return-void
.end method

.method public final setTaskIconAlpha(F)V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTaskIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final setTitle(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 3

    const-string v0, ""

    if-nez p1, :cond_5

    goto :goto_d

    :cond_5
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->replaceTitleIfNeeded(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_d

    :cond_c
    move-object v0, p1

    :goto_d
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1c

    return-void

    :cond_1c
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->tmpBuilder:Ljava/lang/StringBuilder;

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, ""

    if-nez p1, :cond_10

    goto :goto_16

    :cond_10
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->replaceTitleIfNeeded(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_17

    :goto_16
    move-object p1, v0

    :cond_17
    iget-object v2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->tmpBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1f

    goto :goto_27

    :cond_1f
    invoke-direct {p0, p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->replaceTitleIfNeeded(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_26

    goto :goto_27

    :cond_26
    move-object v0, p2

    :goto_27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_30

    move p1, p2

    goto :goto_31

    :cond_30
    move p1, v1

    :goto_31
    if-nez p1, :cond_43

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_3a

    move v1, p2

    :cond_3a
    if-nez v1, :cond_43

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->tmpBuilder:Ljava/lang/StringBuilder;

    const-string p2, " | "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_43
    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->tmpBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->tmpBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5d

    return-void

    :cond_5d
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->tmpBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleAlpha(F)V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public final setTitleTextColor(F)V
    .registers 4

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    const/16 p1, 0xff

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getTitleTv()Landroid/widget/TextView;

    move-result-object p0

    invoke-static {p1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final setTitleTv(Landroid/widget/TextView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->titleTv:Landroid/widget/TextView;

    return-void
.end method

.method public final updateLockIconVisibility(Z)V
    .registers 3

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_6

    :cond_4
    const/16 p1, 0x8

    :goto_6
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_17

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->getLockIcon()Lcom/android/quickstep/views/OplusIconView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    return-void
.end method
