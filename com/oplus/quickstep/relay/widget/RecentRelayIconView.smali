.class public final Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/relay/widget/RecentRelayIconView$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/oplus/quickstep/relay/widget/RecentRelayIconView$Companion;

.field private static final TAG:Ljava/lang/String; = "RecentRelayIconView"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private final mIconPaint:Landroid/graphics/Paint;

.field private mInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

.field private final mMatrix:Landroid/graphics/Matrix;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->Companion:Lcom/oplus/quickstep/relay/widget/RecentRelayIconView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oplus/quickstep/relay/RecentRelayInteraction;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mInteraction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mIconPaint:Landroid/graphics/Paint;

    new-instance p2, Lcom/oplus/quickstep/dock/DockFeedbackEffect;

    invoke-direct {p2, p0, p1}, Lcom/oplus/quickstep/dock/DockFeedbackEffect;-><init>(Landroid/view/View;Landroid/graphics/Paint;)V

    new-instance p1, Lcom/android/systemui/shared/rotation/b;

    invoke-direct {p1, p0}, Lcom/android/systemui/shared/rotation/b;-><init>(Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final _init_$lambda-1(Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;Landroid/view/View;)V
    .registers 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    invoke-virtual {p1}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->getRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->getRelayData()Lcom/oplus/quickstep/relay/data/RelayData;

    move-result-object v0

    if-nez v0, :cond_20

    move-object v0, v1

    goto :goto_24

    :cond_20
    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/data/RelayData;->getStartType()Ljava/lang/String;

    move-result-object v0

    :goto_24
    const-string v2, "onClick(), startType="

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "RecentRelayIconView"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setClicked(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->getRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v0

    instance-of v0, v0, Lcom/android/quickstep/views/LauncherRecentsView;

    if-eqz v0, :cond_5f

    instance-of v0, p1, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_46

    move-object v1, p1

    check-cast v1, Lcom/android/launcher/Launcher;

    :cond_46
    if-nez v1, :cond_49

    goto :goto_62

    :cond_49
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-nez v0, :cond_50

    goto :goto_62

    :cond_50
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    new-instance v3, Lcom/android/wm/shell/bubbles/animation/o;

    invoke-direct {v3, p0, p1}, Lcom/android/wm/shell/bubbles/animation/o;-><init>(Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;Landroid/app/Activity;)V

    invoke-static {v3}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_62

    :cond_5f
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->startRelay(Landroid/app/Activity;)V

    :goto_62
    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->_init_$lambda-1(Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;Landroid/app/Activity;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->lambda-1$lambda-0(Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;Landroid/app/Activity;)V

    return-void
.end method

.method private final findIntentView(Lcom/android/launcher3/OplusWorkspace;Landroid/content/Intent;)Landroid/view/View;
    .registers 13

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    const-string v1, "RecentRelayIconView"

    const-string v2, "getChildAt(index)"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_d

    goto :goto_54

    :cond_d
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_54

    :cond_14
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_54

    move v6, v3

    :goto_1b
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v9, :cond_2f

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_30

    :cond_2f
    move-object v8, v4

    :goto_30
    if-nez v8, :cond_33

    goto :goto_4f

    :cond_33
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->same(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_4f

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_4e

    iget-object p0, v8, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string p1, "findIntentView(), in hotseat: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    return-object v6

    :cond_4f
    :goto_4f
    if-lt v7, v5, :cond_52

    goto :goto_54

    :cond_52
    move v6, v7

    goto :goto_1b

    :cond_54
    :goto_54
    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v0, :cond_63

    check-cast p1, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_64

    :cond_63
    move-object p1, v4

    :goto_64
    if-nez p1, :cond_67

    goto :goto_ad

    :cond_67
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p1

    if-nez p1, :cond_6e

    goto :goto_ad

    :cond_6e
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_ad

    :goto_74
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v7, :cond_88

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_89

    :cond_88
    move-object v6, v4

    :goto_89
    if-nez v6, :cond_8c

    goto :goto_a8

    :cond_8c
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->same(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_a8

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_a7

    iget-object p0, v6, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string p1, "findIntentView(), in workspace: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a7
    return-object v3

    :cond_a8
    :goto_a8
    if-lt v5, v0, :cond_ab

    goto :goto_ad

    :cond_ab
    move v3, v5

    goto :goto_74

    :cond_ad
    :goto_ad
    return-object v4
.end method

.method private static final lambda-1$lambda-0(Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;Landroid/app/Activity;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->startRelay(Landroid/app/Activity;)V

    return-void
.end method

.method private final same(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/ComponentName;)Z
    .registers 3

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private final startRelay(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->getRelayData()Lcom/oplus/quickstep/relay/data/RelayData;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_c

    :cond_9
    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/relay/data/RelayData;->start(Landroid/app/Activity;)V

    :goto_c
    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setRelayData(Lcom/oplus/quickstep/relay/data/RelayData;)V

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->clearDockerAppConnectData(Z)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mIconPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final updateRelayData(Lcom/oplus/quickstep/relay/data/RelayData;)V
    .registers 8

    const-string v0, "RecentRelayIconView"

    const/4 v1, 0x0

    if-nez p1, :cond_8

    :goto_5
    move-object p1, v1

    goto/16 :goto_7f

    :cond_8
    invoke-virtual {p1}, Lcom/oplus/quickstep/relay/data/RelayData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_f

    goto :goto_5

    :cond_f
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->DECAL:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, p1, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "resources"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->getDockIconSize(Landroid/content/res/Resources;)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-nez v3, :cond_30

    move v3, v2

    goto :goto_34

    :cond_30
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    :goto_34
    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v4, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-nez v4, :cond_45

    goto :goto_4a

    :cond_45
    iget-object v5, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :goto_4a
    iget-object v4, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mIconPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_7f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRelayData(), scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", h="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", defaultSize="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7f
    :goto_7f
    if-nez p1, :cond_93

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_8c

    const-string p1, "updateRelayData(), bitmap set null"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8c
    iput-object v1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_93
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
