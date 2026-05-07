.class public final Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper$Companion;

.field private static final SWITCH_DELAY:J = 0x1c2L

.field private static final TAG:Ljava/lang/String; = "RecommendSettingDialogHelper"


# instance fields
.field private final context:Landroid/content/Context;

.field public homeKeyObserver:Lcom/android/launcher/HomeKeyObserver;

.field private final mIsSupportContentRecommend:Z

.field private final mIsSupportFooterRecommend:Z

.field private recommendContentSwitchHelper:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;

.field private recommendSettingDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->Companion:Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->mIsSupportFooterRecommend:Z

    iput-boolean p3, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->mIsSupportContentRecommend:Z

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/couiswitch/COUISwitch;Lcom/coui/appcompat/couiswitch/COUISwitch;Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->showRecommendSettingDialog$lambda-4$lambda-3(Lcom/coui/appcompat/couiswitch/COUISwitch;Lcom/coui/appcompat/couiswitch/COUISwitch;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->showRecommendSettingDialog$lambda-7$lambda-6(Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;Lcom/coui/appcompat/couiswitch/COUISwitch;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->showRecommendSettingDialog$lambda-2(Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;Lcom/coui/appcompat/couiswitch/COUISwitch;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->showRecommendSettingDialog$lambda-9$lambda-8(Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic e(Landroid/widget/ImageView;Landroid/view/ViewGroup;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->showRecommendSettingDialog$lambda-7$lambda-5(Landroid/widget/ImageView;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic f(Lcom/coui/appcompat/couiswitch/COUISwitch;Lcom/android/launcher/folder/recommend/SwitchManageHelper;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->showRecommendSettingDialog$lambda-1$lambda-0(Lcom/coui/appcompat/couiswitch/COUISwitch;Lcom/android/launcher/folder/recommend/SwitchManageHelper;Landroid/view/View;)V

    return-void
.end method

.method private final listenHomeKey()V
    .registers 3

    new-instance v0, Lcom/android/launcher/HomeKeyObserver;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher/HomeKeyObserver;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->setHomeKeyObserver(Lcom/android/launcher/HomeKeyObserver;)V

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->getHomeKeyObserver()Lcom/android/launcher/HomeKeyObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper$listenHomeKey$1;

    invoke-direct {v1, p0}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper$listenHomeKey$1;-><init>(Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher/HomeKeyObserver;->setHomeKeyListener(Lcom/android/launcher/HomeKeyObserver$OnHomeKeyListener;)V

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->getHomeKeyObserver()Lcom/android/launcher/HomeKeyObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/HomeKeyObserver;->startListen()V

    return-void
.end method

.method private final setContentRecommendSummary(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;Landroid/widget/TextView;)V
    .registers 9

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMExpDevice:Z

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->toolsEnable()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->getRecommendFolders()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->getFolderRecommendDescribe(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c8

    :cond_19
    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->getRecommendFolders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_47

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f12043e

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->getRecommendFolders()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c8

    :cond_47
    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->getRecommendFolders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_81

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120440

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->getRecommendFolders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v4, v3, v1

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->getRecommendFolders()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object p1, v3, v2

    invoke-virtual {p0, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c8

    :cond_81
    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->getRecommendFolders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_c8

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f12043f

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->getRecommendFolders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v5, v4, v1

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->getRecommendFolders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v1, v4, v2

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->getRecommendFolders()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object p1, v4, v3

    invoke-virtual {p0, v0, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c8
    :goto_c8
    return-void
.end method

.method private static final showRecommendSettingDialog$lambda-1$lambda-0(Lcom/coui/appcompat/couiswitch/COUISwitch;Lcom/android/launcher/folder/recommend/SwitchManageHelper;Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/common/util/OplusLauncherDbUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setChecked(Z)V

    return-void

    :cond_14
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->setSwitchByUser(Z)V

    return-void
.end method

.method private static final showRecommendSettingDialog$lambda-2(Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;Lcom/coui/appcompat/couiswitch/COUISwitch;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->getRecommendContentSwitchHelper()Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_18

    :cond_d
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->getRecommendSettingDialog()Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->setRecommendState(ZLcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    :goto_18
    return-void
.end method

.method private static final showRecommendSettingDialog$lambda-4$lambda-3(Lcom/coui/appcompat/couiswitch/COUISwitch;Lcom/coui/appcompat/couiswitch/COUISwitch;Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 6

    const-string p3, "$recommendContentSwitchRunnable"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/common/util/OplusLauncherDbUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_19

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setChecked(Z)V

    return-void

    :cond_19
    sget-object p0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x1c2

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final showRecommendSettingDialog$lambda-7$lambda-5(Landroid/widget/ImageView;Landroid/view/ViewGroup;)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static final showRecommendSettingDialog$lambda-7$lambda-6(Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;Landroid/view/View;)V
    .registers 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->getRecommendSettingDialog()Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    move-result-object p0

    if-nez p0, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss()V

    :goto_10
    return-void
.end method

.method private static final showRecommendSettingDialog$lambda-9$lambda-8(Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;Landroid/content/DialogInterface;)V
    .registers 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->getHomeKeyObserver()Lcom/android/launcher/HomeKeyObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/HomeKeyObserver;->stopListen()V

    return-void
.end method


# virtual methods
.method public final dismissDialog()V
    .registers 3

    const-string v0, "RecommendSettingDialogHelper"

    const-string v1, "dismissDialog"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->recommendContentSwitchHelper:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;

    if-nez v0, :cond_c

    goto :goto_16

    :cond_c
    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->getSecondDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_16

    :cond_13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :goto_16
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->recommendSettingDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-nez p0, :cond_1b

    goto :goto_1e

    :cond_1b
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss()V

    :goto_1e
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getHomeKeyObserver()Lcom/android/launcher/HomeKeyObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->homeKeyObserver:Lcom/android/launcher/HomeKeyObserver;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "homeKeyObserver"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMIsSupportContentRecommend()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->mIsSupportContentRecommend:Z

    return p0
.end method

.method public final getMIsSupportFooterRecommend()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->mIsSupportFooterRecommend:Z

    return p0
.end method

.method public final getRecommendContentSwitchHelper()Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->recommendContentSwitchHelper:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;

    return-object p0
.end method

.method public final getRecommendSettingDialog()Lcom/coui/appcompat/panel/COUIBottomSheetDialog;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->recommendSettingDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    return-object p0
.end method

.method public final setHomeKeyObserver(Lcom/android/launcher/HomeKeyObserver;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->homeKeyObserver:Lcom/android/launcher/HomeKeyObserver;

    return-void
.end method

.method public final setRecommendContentSwitchHelper(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->recommendContentSwitchHelper:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;

    return-void
.end method

.method public final setRecommendSettingDialog(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->recommendSettingDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    return-void
.end method

.method public final showRecommendSettingDialog(ILcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;)V
    .registers 9

    const-string v0, "bottomSheetDialogAnimatorListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;

    iget-object v2, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->context:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->recommendContentSwitchHelper:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;

    new-instance p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->context:Landroid/content/Context;

    const v2, 0x7f1301e7

    invoke-direct {p1, v1, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->recommendSettingDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/view/LayoutInflater;

    const v1, 0x7f0d017b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a016e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0a0247

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    sget-boolean v3, Lcom/android/common/config/FeatureOption;->isRLMExpDevice:Z

    if-eqz v3, :cond_61

    const v3, 0x7f0a040e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->getResourceByIndex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_61
    iget-boolean v3, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->mIsSupportFooterRecommend:Z

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_84

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v2, 0x7f0a0248

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isSwitchEnable()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setChecked(Z)V

    new-instance v3, Lcom/android/launcher/folder/recommend/f;

    invoke-direct {v3, v2, v0}, Lcom/android/launcher/folder/recommend/f;-><init>(Lcom/coui/appcompat/couiswitch/COUISwitch;Lcom/android/launcher/folder/recommend/SwitchManageHelper;)V

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_87

    :cond_84
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_87
    iget-boolean v0, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->mIsSupportContentRecommend:Z

    if-eqz v0, :cond_c4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v0, 0x7f0a0170

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0171

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/couiswitch/COUISwitch;

    new-instance v2, Landroidx/constraintlayout/motion/widget/a;

    invoke-direct {v2, p0, v1}, Landroidx/constraintlayout/motion/widget/a;-><init>(Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;Lcom/coui/appcompat/couiswitch/COUISwitch;)V

    iget-object v3, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->recommendContentSwitchHelper:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v4, "contentRecommendSummary"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v0}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->setContentRecommendSummary(Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;Landroid/widget/TextView;)V

    sget-object v0, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->Companion:Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper$Companion;->isSwitchEnable()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setChecked(Z)V

    new-instance v0, Lcom/android/launcher/folder/recommend/g;

    invoke-direct {v0, v1, v1, v2}, Lcom/android/launcher/folder/recommend/g;-><init>(Lcom/coui/appcompat/couiswitch/COUISwitch;Lcom/coui/appcompat/couiswitch/COUISwitch;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_c7

    :cond_c4
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_c7
    const v0, 0x7f0a0558

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0117

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    const v4, 0x7f070210

    if-eqz v3, :cond_105

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_113

    :cond_105
    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_113
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroidx/constraintlayout/motion/widget/a;

    invoke-direct {v2, v1, v0}, Landroidx/constraintlayout/motion/widget/a;-><init>(Landroid/widget/ImageView;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Lcom/android/launcher/v;

    invoke-direct {v0, p0}, Lcom/android/launcher/v;-><init>(Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->listenHomeKey()V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->recommendSettingDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-nez v0, :cond_12e

    goto :goto_147

    :cond_12e
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setContentView(Landroid/view/View;)V

    iget-object p1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDragView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-object p2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->e0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

    new-instance p1, Lcom/android/launcher/folder/recommend/a;

    invoke-direct {p1, p0}, Lcom/android/launcher/folder/recommend/a;-><init>(Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_147
    return-void
.end method
