.class public Lcom/android/launcher/togglebar/LayoutSettingsHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;,
        Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;
    }
.end annotation


# static fields
.field public static final DEFAULT_LAYOUT_CELLCOUNT_Y:I = 0x6

.field public static final GRID_CHANGE_ANIM_DURATION:I = 0x1c2

.field public static final GRID_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final LEFT_TO_RIGHT_MARK:Ljava/lang/String; = "\u200e"

.field public static final PREF_LAYOUT_CELLCOUNT_X:Ljava/lang/String; = "layout_cellcount_x"

.field public static final PREF_LAYOUT_CELLCOUNT_Y:Ljava/lang/String; = "layout_cellcount_y"

.field private static final TAG:Ljava/lang/String; = "LayoutSettingsHelper"

.field private static final TAG_GRID_SETTINGS:Ljava/lang/String; = "grid-settings"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final WIDGET_ALPHA_ANIM_DURATION:I = 0xc8

.field private static final mLastMovingOutCardView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static sCurrentScreenChildren:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIconsMovingIn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sIconsMovingOnScreen:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sIconsMovingOut:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sIsBackOriginLayoutMode:Z

.field public static sIsPreviewTaskRunning:Z

.field private static final sOriginalViewsInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a  # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd  # 0.1f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->GRID_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sCurrentScreenChildren:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sOriginalViewsInfo:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sIconsMovingOnScreen:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sIconsMovingOut:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sIconsMovingIn:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->mLastMovingOutCardView:Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sIsBackOriginLayoutMode:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sCurrentScreenChildren:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->initCurrentScreenItems(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public static synthetic access$200()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sOriginalViewsInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method public static synthetic access$302(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sIsBackOriginLayoutMode:Z

    return p0
.end method

.method public static synthetic access$400()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sIconsMovingOut:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$500()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sIconsMovingIn:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$600()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sIconsMovingOnScreen:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$700()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->mLastMovingOutCardView:Ljava/util/List;

    return-object v0
.end method

.method public static applyLayoutSettings(Lcom/android/launcher/Launcher;IIZ)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyLayoutSettings, column = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", row = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayoutSettingsHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher/togglebar/LayoutSettingsHelper$SwitchLayoutTask;-><init>(Lcom/android/launcher/Launcher;IIZ)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->clear()V

    return-void
.end method

.method private static changeWidgetsVisibility(Lcom/android/launcher/Launcher;ZZ)V
    .registers 13

    sget-object v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sCurrentScreenChildren:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz p1, :cond_1a

    move v4, v2

    goto :goto_1b

    :cond_1a
    move v4, v3

    :goto_1b
    if-eqz p1, :cond_1e

    move v2, v3

    :cond_1e
    sget-object v3, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sCurrentScreenChildren:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_28
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    instance-of v6, v5, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v6, :cond_28

    instance-of v6, v5, Lcom/android/launcher3/widget/DeferredAppWidgetHostView;

    const-string v7, "LayoutSettingsHelper"

    if-eqz v6, :cond_55

    const-string v6, "changeWidgetsVisibility -- child is DeferredAppWidgetHostView! Do not re-add it again. child: "

    invoke-static {v6}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sOriginalViewsInfo:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80

    :cond_55
    if-eqz p1, :cond_80

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_80

    const-string v6, "changeWidgetsVisibility -- child parent is null! re-add it. child: "

    invoke-static {v6}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sOriginalViewsInfo:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v6

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v6, v5, v7}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    :cond_80
    :goto_80
    if-eqz p2, :cond_9a

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v4, v6, v7

    const/4 v7, 0x1

    aput v2, v6, v7

    const-string v7, "alpha"

    invoke-static {v5, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_9a
    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_28

    :cond_9e
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_a5

    return-void

    :cond_a5
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static clear()V
    .registers 1

    sget-object v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sCurrentScreenChildren:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sOriginalViewsInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sIconsMovingOnScreen:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sIconsMovingOut:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sIconsMovingIn:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private static initCurrentScreenItems(Lcom/android/launcher/Launcher;)V
    .registers 11

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sCurrentScreenChildren:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    sget-object v1, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sOriginalViewsInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    if-eqz v0, :cond_12d

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_115

    sget-object v1, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sIconsMovingOnScreen:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    sget-object v1, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sIconsMovingOut:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    sget-object v1, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sIconsMovingIn:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_35
    if-ge v3, v2, :cond_115

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v6, v5, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v6, :cond_93

    if-nez v1, :cond_4b

    invoke-static {p0}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getAllProvidersMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    :cond_4b
    new-instance v6, Lcom/android/launcher3/util/ComponentKey;

    move-object v7, v5

    check-cast v7, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v7, v7, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v8, v5, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v6, v7, v8}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v6, :cond_111

    check-cast v5, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->obtain()Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object v5

    iget v7, v6, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iput v7, v5, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minWidth:I

    iget v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iput v6, v5, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minHeight:I

    sget-object v6, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sOriginalViewsInfo:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sCurrentScreenChildren:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sIconsMovingOnScreen:Ljava/util/Map;

    new-instance v7, Landroid/util/Pair;

    iget v8, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v7, v8, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_111

    :cond_93
    instance-of v6, v5, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v6, :cond_e7

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v6

    move-object v7, v5

    check-cast v7, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v8, v7, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/oplus/card/manager/domain/CardManager;->getCardMinWidthAndHeightInfo(ILandroid/content/Context;)Landroid/graphics/Point;

    move-result-object v6

    iget v8, v6, Landroid/graphics/Point;->x:I

    if-eqz v8, :cond_b5

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-eqz v6, :cond_b5

    iput v8, v7, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    iput v6, v7, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    goto :goto_bc

    :cond_b5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/launcher3/card/LauncherCardInfo;->resetMinWidthAndMinHeightIfNeeded(Landroid/content/Context;)V

    :goto_bc
    sget-object v6, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sOriginalViewsInfo:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/ItemInfo;->obtain()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sIconsMovingOnScreen:Ljava/util/Map;

    new-instance v7, Landroid/util/Pair;

    iget v8, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sCurrentScreenChildren:Ljava/util/Map;

    iget v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_111

    :cond_e7
    sget-object v6, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sOriginalViewsInfo:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/ItemInfo;->obtain()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sCurrentScreenChildren:Ljava/util/Map;

    iget v7, v5, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sIconsMovingOnScreen:Ljava/util/Map;

    new-instance v7, Landroid/util/Pair;

    iget v8, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v7, v8, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_111
    :goto_111
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_35

    :cond_115
    const-string p0, "initCurrentScreenItems -- count = "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sCurrentScreenChildren:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LayoutSettingsHelper"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12d
    return-void
.end method

.method public static onToggleBarLayoutDestroy(Lcom/android/launcher/Launcher;Z)V
    .registers 3

    sget-boolean v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sIsBackOriginLayoutMode:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->sIsBackOriginLayoutMode:Z

    invoke-static {p0}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->verifyCurrentCellLayoutOccupancy(Lcom/android/launcher/Launcher;)V

    :cond_a
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->changeWidgetsVisibility(Lcom/android/launcher/Launcher;ZZ)V

    invoke-static {}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->clear()V

    return-void
.end method

.method public static onToggleBarLayoutResume(Lcom/android/launcher/Launcher;)V
    .registers 3

    invoke-static {p0}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->initCurrentScreenItems(Lcom/android/launcher/Launcher;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->changeWidgetsVisibility(Lcom/android/launcher/Launcher;ZZ)V

    return-void
.end method

.method public static refreshToggleBarLayout(Lcom/android/launcher/Launcher;)V
    .registers 2

    invoke-static {p0}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->initCurrentScreenItems(Lcom/android/launcher/Launcher;)V

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->changeWidgetsVisibility(Lcom/android/launcher/Launcher;ZZ)V

    return-void
.end method

.method public static saveIconSize(Landroid/content/Context;F)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveIconSize iconSizeDp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LayoutSettingsHelper"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_55

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "layout_icon_size"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " curIconSizeDp:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_55
    return-void
.end method

.method public static saveLayoutInfo(Landroid/content/Context;II)V
    .registers 6

    const-string/jumbo v0, "saveLayoutInfo, cellCountX = "

    const-string v1, ", cellCountY = "

    const-string v2, "LayoutSettingsHelper"

    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/common/config/g;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->saveLayoutXY(Landroid/content/Context;II)V

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "layout_cellcount_x"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "layout_cellcount_y"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_39

    :cond_33
    const-string/jumbo p0, "saveLayoutInfo sharedPreferences is null!"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_39
    return-void
.end method

.method public static saveLayoutXY(Landroid/content/Context;II)V
    .registers 7

    const-string v0, "launcher_layout_parameter"

    const-string v1, "LayoutSettingsHelper"

    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "layout_cellcount_x"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "layout_cellcount_y"

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_64

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveLayoutXY newLayout:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " curLayout:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4d} :catch_4e

    goto :goto_64

    :catch_4e
    move-exception p0

    const-string/jumbo p1, "saveLayoutAndIconSize JSONException:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    :goto_64
    return-void
.end method

.method private static verifyCurrentCellLayoutOccupancy(Lcom/android/launcher/Launcher;)V
    .registers 11

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    if-eqz p0, :cond_3d

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CellLayout;

    if-eqz p0, :cond_3d

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v1, :cond_3d

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v6, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v7, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v8, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_3d
    return-void
.end method
