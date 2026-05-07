.class public final synthetic Landroidx/core/view/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/core/util/Predicate;
.implements La/a;
.implements Lcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;
.implements Lcom/android/launcher/download/DownloadProgressDrawable$IInvalidateDelegate;
.implements Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$OnItemClickListener;
.implements Lcom/coui/appcompat/indicator/COUIPageIndicator$OnIndicatorDotClickListener;
.implements Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$StatusBarClickListener;
.implements Lcom/android/launcher3/card/cache/CardCache$OnCacheLoadedCallback;
.implements Lcom/oplus/smartsdk/SmartAPICallback;
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;
.implements Lcom/android/launcher3/anim/IconPressAnimManager$PressAnimUpdateListener;
.implements Lcom/android/launcher3/icons/BitmapRenderer;
.implements Lcom/android/launcher3/qsb/QsbContainerView$WidgetProvidersUpdateCallback;
.implements Lcom/android/quickstep/views/RecentsView$OnEmptyMessageUpdatedListener;
.implements Lcom/android/systemui/shared/system/InputConsumerController$InputListener;
.implements Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;
.implements Lcom/android/wm/shell/pip/PipAppOpsListener$Callback;
.implements Lcom/android/wm/shell/onehanded/OneHandedTouchHandler$OneHandedTouchEventCallback;
.implements Lcom/coui/appcompat/clickablespan/COUIClickableSpan$SpannableStrClickListener;
.implements Lcom/oplus/epona/Call$Callback;
.implements Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;
.implements Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnFetchDataResultListener;
.implements Lcom/oplus/statistics/util/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    const/16 v0, 0x8

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lb/h;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/UninstallRemoveAppPanel;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/download/DownloadProgressDrawable;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/folder/recommend/FooterController;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/guide/GuidePageManager;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/guide/GuidePanelActivity;)V
    .registers 3

    const/4 v0, 0x7

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/card/CardModelWrapper;)V
    .registers 3

    const/16 v0, 0x9

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/folder/Folder;)V
    .registers 3

    const/16 v0, 0xc

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 3

    const/16 v0, 0xd

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/folder/PreviewItemManager;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/icons/ShadowGenerator$Builder;)V
    .registers 3

    const/16 v0, 0xe

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;)V
    .registers 3

    const/16 v0, 0xf

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    const/16 v0, 0xb

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;)V
    .registers 3

    const/16 v0, 0x10

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;)V
    .registers 3

    const/16 v0, 0x11

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/InputConsumerProxy;)V
    .registers 3

    const/16 v0, 0x12

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V
    .registers 3

    const/16 v0, 0x13

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .registers 3

    const/16 v0, 0x15

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V
    .registers 3

    const/16 v0, 0x14

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/card/helper/NormalSmartEngine;)V
    .registers 3

    const/16 v0, 0x16

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/compatui/OplusCompatUILayout;)V
    .registers 3

    const/16 v0, 0x17

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/epona/ITransferCallback;)V
    .registers 3

    const/16 v0, 0x18

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/dock/DockIconView;)V
    .registers 3

    const/16 v0, 0x19

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;)V
    .registers 3

    const/16 v0, 0x1a

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/statistics/data/PeriodDataBean;)V
    .registers 3

    const/16 v0, 0x1c

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/statistics/data/SettingKeyDataBean;)V
    .registers 3

    const/16 v0, 0x1b

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 3

    const/16 v0, 0xa

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/Predicate;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/json/JSONException;)V
    .registers 3

    const/16 v0, 0x1d

    iput v0, p0, Landroidx/core/view/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/compatui/OplusCompatUILayout;

    invoke-static {p0}, Lcom/oplus/compatui/OplusCompatUILayout;->a(Lcom/oplus/compatui/OplusCompatUILayout;)V

    return-void
.end method

.method public b()V
    .registers 1

    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0}, Lcom/android/launcher/settings/BaseSettingsFragment;->b(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public dismissPip()V
    .registers 1

    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->removePip()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->drawShadow(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    iget v0, p0, Landroidx/core/view/a;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0xb
    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/folder/Folder;->e(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :goto_f
    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/Folder;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/folder/Folder;->g(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_data_18
    .packed-switch 0xb
        :pswitch_6  #0000000b
    .end packed-switch
.end method

.method public get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Landroidx/core/view/a;->a:I

    packed-switch v0, :pswitch_data_22

    goto :goto_18

    :pswitch_6  #0x1c
    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/statistics/data/PeriodDataBean;

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->b(Lcom/oplus/statistics/data/PeriodDataBean;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_f  #0x1b
    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/statistics/data/SettingKeyDataBean;

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->l(Lcom/oplus/statistics/data/SettingKeyDataBean;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_18
    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/json/JSONException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_22
    .packed-switch 0x1b
        :pswitch_f  #0000001b
        :pswitch_6  #0000001c
    .end packed-switch
.end method

.method public invalidate()V
    .registers 2

    iget v0, p0, Landroidx/core/view/a;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x3
    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-static {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->f(Lcom/android/launcher/download/DownloadProgressDrawable;)V

    return-void

    :goto_e
    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewItemManager;->onParamsChanged()V

    return-void

    :pswitch_data_16
    .packed-switch 0x3
        :pswitch_6  #00000003
    .end packed-switch
.end method

.method public onAnimationEnd()V
    .registers 1

    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/UninstallRemoveAppPanel;

    invoke-static {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->a(Lcom/android/launcher/UninstallRemoveAppPanel;)V

    return-void
.end method

.method public onBubbleExpandChanged(ZLjava/lang/String;)V
    .registers 3

    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController;->n(Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;ZLjava/lang/String;)V

    return-void
.end method

.method public onCacheLoaded(Lcom/android/launcher3/card/cache/CachedEntry;)V
    .registers 2

    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/card/CardModelWrapper;

    invoke-static {p0, p1}, Lcom/android/launcher3/card/CardModelWrapper;->a(Lcom/android/launcher3/card/CardModelWrapper;Lcom/android/launcher3/card/cache/CachedEntry;)V

    return-void
.end method

.method public onCall(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 3

    iget v0, p0, Landroidx/core/view/a;->a:I

    packed-switch v0, :pswitch_data_14

    goto :goto_c

    :pswitch_6  #0xa
    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/launcher3/card/utils/CardCacheCleaner;->a(Ljava/lang/Object;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void

    :goto_c
    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/card/helper/NormalSmartEngine;

    invoke-static {p0, p1}, Lcom/oplus/card/helper/NormalSmartEngine;->f(Lcom/oplus/card/helper/NormalSmartEngine;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void

    :pswitch_data_14
    .packed-switch 0xa
        :pswitch_6  #0000000a
    .end packed-switch
.end method

.method public onClick(I)V
    .registers 3

    iget v0, p0, Landroidx/core/view/a;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x6
    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {p0, p1}, Lcom/android/launcher/guide/GuidePageManager;->c(Lcom/android/launcher/guide/GuidePageManager;I)V

    return-void

    :goto_e
    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/guide/GuidePanelActivity;

    invoke-static {p0, p1}, Lcom/android/launcher/guide/GuidePanelActivity;->e(Lcom/android/launcher/guide/GuidePanelActivity;I)V

    return-void

    :pswitch_data_16
    .packed-switch 0x6
        :pswitch_6  #00000006
    .end packed-switch
.end method

.method public onEmptyMessageUpdated(Z)V
    .registers 2

    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;

    invoke-static {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->e(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;Z)V

    return-void
.end method

.method public onFetchDataResult(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 3

    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->b(Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;)Z
    .registers 2

    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-static {p0, p1}, Lcom/android/quickstep/util/InputConsumerProxy;->a(Lcom/android/quickstep/util/InputConsumerProxy;Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method public onItemClick(Landroid/view/View;ILjava/lang/Object;)V
    .registers 4

    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/folder/recommend/FooterController;

    check-cast p3, Lcom/android/launcher/folder/recommend/bean/DataBean;

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/folder/recommend/FooterController;->b(Lcom/android/launcher/folder/recommend/FooterController;Landroid/view/View;ILcom/android/launcher/folder/recommend/bean/DataBean;)V

    return-void
.end method

.method public onProvidersUpdated()V
    .registers 1

    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;

    invoke-static {p0}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->b(Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;)V

    return-void
.end method

.method public onReceive(Lcom/oplus/epona/Response;)V
    .registers 2

    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/epona/ITransferCallback;

    invoke-static {p0, p1}, Lcom/oplus/epona/ipc/local/RemoteTransfer;->a(Lcom/oplus/epona/ITransferCallback;Lcom/oplus/epona/Response;)V

    return-void
.end method

.method public onStop()V
    .registers 1

    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->c(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    return-void
.end method

.method public onUpdate(FLandroid/graphics/PorterDuffColorFilter;)V
    .registers 4

    iget v0, p0, Landroidx/core/view/a;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0xd
    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->j(Lcom/android/launcher3/folder/OplusFolderIcon;FLandroid/graphics/PorterDuffColorFilter;)V

    return-void

    :goto_e
    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->a(Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;FLandroid/graphics/PorterDuffColorFilter;)V

    return-void

    :pswitch_data_16
    .packed-switch 0xd
        :pswitch_6  #0000000d
    .end packed-switch
.end method

.method public shouldIncludeView(Landroid/view/View;)Z
    .registers 2

    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/dock/DockIconView;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dock/DockView;->h(Lcom/oplus/quickstep/dock/DockIconView;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public test(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Landroidx/core/view/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Predicate;

    check-cast p1, Landroid/content/ClipData$Item;

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
