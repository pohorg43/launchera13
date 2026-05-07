.class public Lcom/android/launcher/UninstallRemoveAppPanel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/views/AlertPanelView$ActionCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/UninstallRemoveAppPanel$Companion;,
        Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;,
        Lcom/android/launcher/UninstallRemoveAppPanel$UninstallTask;,
        Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;
    }
.end annotation


# static fields
.field private static final APP_INFO_LENGTH:I = 0x258

.field public static final Companion:Lcom/android/launcher/UninstallRemoveAppPanel$Companion;

.field private static final FLAG_PROFILE_CLONE:I = 0x4

.field public static final FLAG_WORK:I = 0x1

.field private static final MULTI_UNINSTALL:Ljava/lang/String; = "2"

.field private static final SINGLE_UNINSTALL:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "UninstallRemoveAppPanel"


# instance fields
.field private final mAppInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/model/UninstallItemInfoWithIcon;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonClickListener:Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;

.field private final mCallBacks:Lcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;

.field private mContext:Landroid/content/Context;

.field private mDeleteIconSubTitle:Landroid/widget/TextView;

.field private mFamilySpaceItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

.field private mIsclickUninstall:Z

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMainTitle:Landroid/widget/TextView;

.field private mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

.field private final mRemoveShortcutIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;"
        }
    .end annotation
.end field

.field private mUnInstallSubTitle:Landroid/widget/TextView;

.field private final mUninstallAppInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/UninstallRemoveAppPanel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/UninstallRemoveAppPanel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/UninstallRemoveAppPanel;->Companion:Lcom/android/launcher/UninstallRemoveAppPanel$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    const-string v0, "fromContext(context)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher/Launcher;

    iput-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance p1, Landroidx/core/view/a;

    invoke-direct {p1, p0}, Landroidx/core/view/a;-><init>(Lcom/android/launcher/UninstallRemoveAppPanel;)V

    iput-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mCallBacks:Lcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/UninstallRemoveAppPanel;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->mCallBacks$lambda-0(Lcom/android/launcher/UninstallRemoveAppPanel;)V

    return-void
.end method

.method public static final synthetic access$updateItemClick(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/UninstallRemoveAppPanel;->updateItemClick(Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;I)V

    return-void
.end method

.method public static synthetic b(Ljava/util/ArrayList;Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/UninstallRemoveAppPanel;->onPositiveButtonClick$lambda-10$lambda-9(Ljava/util/ArrayList;Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/UninstallRemoveAppPanel;->onPositiveButtonClick$lambda-10(Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/UninstallRemoveAppPanel;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->onPositiveButtonClick$lambda-10$lambda-9$lambda-7(Lcom/android/launcher/UninstallRemoveAppPanel;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/UninstallRemoveAppPanel;->onPositiveButtonClick$lambda-6(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/ArrayList;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/UninstallRemoveAppPanel;->onPositiveButtonClick$lambda-5(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher/UninstallRemoveAppPanel;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->onPositiveButtonClick$lambda-10$lambda-9$lambda-8(Lcom/android/launcher/UninstallRemoveAppPanel;)V

    return-void
.end method

.method private final initTitleContent(Lcom/android/launcher/views/AlertPanelView$Builder;)V
    .registers 14

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mDeleteIconSubTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    if-nez v0, :cond_7

    goto :goto_a

    :cond_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_a
    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUnInstallSubTitle:Landroid/widget/TextView;

    if-nez v0, :cond_f

    goto :goto_12

    :cond_f
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_12
    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_3b

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3b

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f12056d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    const v4, 0x7f1203e3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_36
    move-object v4, v1

    move-object v5, v3

    move-object v3, v4

    goto/16 :goto_209

    :cond_3b
    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v3, 0x7f12056b

    const-string v4, ""

    const-string v5, "format(format, *args)"

    const/4 v6, 0x1

    if-ne v0, v6, :cond_117

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v7, "mUninstallAppInfos[0]"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v7, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v7, :cond_5f

    move-object v7, v4

    goto :goto_63

    :cond_5f
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_63
    sget-object v8, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v8, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    const v9, 0x7f120576

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mContext.getString(R.str…l_panel_single_app_title)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v7, v9, v2

    invoke-static {v9, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v9}, Lcom/android/launcher/UninstallRemoveAppPanel;->isMultiAppAdded(Ljava/util/ArrayList;)Z

    move-result v9

    if-eqz v9, :cond_ac

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f120575

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "mContext.resources.getSt…b_title\n                )"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v7, v4, v2

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_103

    :cond_ac
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_e2

    sget-object v9, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v9}, Lcom/android/common/util/PackageUtils$Companion;->getInstance()Lcom/android/common/util/PackageUtils;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/common/util/PackageUtils;->isNeedShowUninstallReminder(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e2

    iget-object v5, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-nez v6, :cond_d2

    goto :goto_dd

    :cond_d2
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    :goto_dd
    invoke-static {v5, v4, v7}, Lcom/android/common/util/LauncherUtil;->getRetainInfoFromApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_103

    :cond_e2
    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f120571

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "mContext.resources.getSt…tall_panel_app_sub_title)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v7, v4, v2

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_103
    iget-object v4, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUnInstallSubTitle:Landroid/widget/TextView;

    if-nez v4, :cond_108

    goto :goto_10b

    :cond_108
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_10b
    iget-object v4, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    move-object v5, v3

    move-object v3, v0

    move-object v0, v8

    goto/16 :goto_209

    :cond_117
    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v6, :cond_158

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v2

    :cond_126
    :goto_126
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    invoke-virtual {v5}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getSelectFlag()Z

    move-result v5

    if-eqz v5, :cond_126

    add-int/lit8 v4, v4, 0x1

    goto :goto_126

    :cond_13b
    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f100009

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v0, v5, v4, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_36

    :cond_158
    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v3, 0x7f12044a

    if-ne v0, v6, :cond_1d4

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v7, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v0, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_17c

    goto :goto_180

    :cond_17c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_180
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f1201ce

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "mContext.resources.getSt…ete_icon_panel_sub_title)"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v4, v7, v2

    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    const v8, 0x7f1201cd

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "mContext.getString(R.str…_panel_single_main_title)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v4, v8, v2

    invoke-static {v8, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mDeleteIconSubTitle:Landroid/widget/TextView;

    if-nez v5, :cond_1cb

    goto :goto_1ce

    :cond_1cb
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1ce
    move-object v5, v3

    move-object v3, v1

    move-object v11, v4

    move-object v4, v0

    move-object v0, v11

    goto :goto_209

    :cond_1d4
    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v6, :cond_205

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f100004

    iget-object v5, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_36

    :cond_205
    move-object v0, v1

    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    :goto_209
    iget-object v6, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUnInstallSubTitle:Landroid/widget/TextView;

    if-nez v6, :cond_20f

    move-object v6, v1

    goto :goto_213

    :cond_20f
    invoke-virtual {v6}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    :goto_213
    const-string/jumbo v7, "sans-serif-medium"

    if-eqz v6, :cond_224

    iget-object v6, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUnInstallSubTitle:Landroid/widget/TextView;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v7, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_224
    iget-object v6, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mMainTitle:Landroid/widget/TextView;

    if-nez v6, :cond_229

    goto :goto_22d

    :cond_229
    invoke-virtual {v6}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    :goto_22d
    if-nez v1, :cond_23b

    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mMainTitle:Landroid/widget/TextView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v7, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_23b
    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mMainTitle:Landroid/widget/TextView;

    if-nez v1, :cond_240

    goto :goto_243

    :cond_240
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_243
    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUnInstallSubTitle:Landroid/widget/TextView;

    if-nez v0, :cond_248

    goto :goto_24b

    :cond_248
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_24b
    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mDeleteIconSubTitle:Landroid/widget/TextView;

    if-nez p0, :cond_250

    goto :goto_253

    :cond_250
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_253
    invoke-virtual {p1, v5}, Lcom/android/launcher/views/AlertPanelView$Builder;->setPositiveButtonText(Ljava/lang/CharSequence;)Lcom/android/launcher/views/AlertPanelView$Builder;

    return-void
.end method

.method private final isMultiAppAdded(Ljava/util/ArrayList;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_29

    const-string p1, ""

    goto :goto_34

    :cond_29
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :goto_34
    invoke-virtual {v0, p1}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppAdded(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    goto :goto_3d

    :cond_3c
    const/4 p0, 0x0

    :goto_3d
    return p0
.end method

.method private static final mCallBacks$lambda-0(Lcom/android/launcher/UninstallRemoveAppPanel;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->getMButtonClickListener()Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->getMButtonClickListener()Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;->onPositiveButtonClick()V

    :cond_16
    invoke-direct {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->startUninstallTask()V

    return-void
.end method

.method private static final onPositiveButtonClick$lambda-10(Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 7

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$folderLastItemShouldFade"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v2

    sget-object v3, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    if-ne v2, v3, :cond_32

    const/4 v2, 0x1

    iput-boolean v2, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v2, Lcom/android/launcher/AppPanelHelper;->INSTANCE:Lcom/android/launcher/AppPanelHelper;

    invoke-virtual {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->getMUninstallAppInfos()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->getMContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/launcher/AppPanelHelper;->animAllAppsBubbleTextViewIconForUninstall(Ljava/util/ArrayList;Ljava/util/List;Landroid/content/Context;)V

    goto :goto_3f

    :cond_32
    sget-object v2, Lcom/android/launcher/AppPanelHelper;->INSTANCE:Lcom/android/launcher/AppPanelHelper;

    invoke-virtual {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->getMUninstallAppInfos()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->getMContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/launcher/AppPanelHelper;->animAppIconBubbleTextViewForUninstall(Ljava/util/ArrayList;Ljava/util/List;Landroid/content/Context;)V

    :goto_3f
    invoke-virtual {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->getMContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/launcher/c;

    invoke-direct {v3, v0, p0, p1, v1}, Lcom/android/launcher/c;-><init>(Ljava/util/ArrayList;Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final onPositiveButtonClick$lambda-10$lambda-9(Ljava/util/ArrayList;Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 16

    const-string v0, "$list"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$folderLastItemShouldFade"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$isDrawer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x12c

    if-lez v0, :cond_9b

    const/4 v4, 0x0

    move v5, v4

    :goto_20
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "list[i]"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v8

    const-string/jumbo v9, "onPositiveButtonClick -- item = "

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "UnInstallApp"

    const-string v10, "UninstallRemoveAppPanel"

    invoke-static {v9, v10, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v0, -0x1

    if-ne v5, v8, :cond_45

    move v5, v1

    goto :goto_46

    :cond_45
    move v5, v4

    :goto_46
    invoke-virtual {v7}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v9, :cond_60

    iget-object v10, p1, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v10}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v10

    move-object v11, v8

    check-cast v11, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v11}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/launcher/download/DownloadAppsManager;->checkUninstallState(Ljava/lang/String;)Z

    move-result v10

    goto :goto_61

    :cond_60
    move v10, v1

    :goto_61
    if-eqz v10, :cond_7f

    iget-boolean v10, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v10, :cond_7f

    if-eqz v9, :cond_72

    iget-boolean v9, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v9, :cond_72

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {p1, v8}, Lcom/android/launcher/UninstallRemoveAppPanel;->refreshUninstalledSearchAppInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    :cond_72
    iget-object v7, v7, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    if-eqz v5, :cond_79

    iget-object v8, p1, Lcom/android/launcher/UninstallRemoveAppPanel;->mCallBacks:Lcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;

    goto :goto_7a

    :cond_79
    const/4 v8, 0x0

    :goto_7a
    invoke-interface {v7, v4, v4, v1, v8}, Lcom/android/launcher3/IBubbleTextViewExt;->applyViewFadeState(ZIZLcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;)Z

    move-result v7

    goto :goto_80

    :cond_7f
    move v7, v4

    :goto_80
    if-eqz v5, :cond_96

    if-nez v7, :cond_96

    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel;->getMContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/launcher/k0;

    invoke-direct {v7, p1, v4}, Lcom/android/launcher/k0;-><init>(Lcom/android/launcher/UninstallRemoveAppPanel;I)V

    invoke-virtual {v5, v7, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_96
    if-lt v6, v0, :cond_99

    goto :goto_9b

    :cond_99
    move v5, v6

    goto :goto_20

    :cond_9b
    :goto_9b
    if-nez v0, :cond_b9

    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel;->getMUninstallAppInfos()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_b9

    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel;->getMContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/launcher/k0;

    invoke-direct {p2, p1, v1}, Lcom/android/launcher/k0;-><init>(Lcom/android/launcher/UninstallRemoveAppPanel;I)V

    invoke-virtual {p0, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b9
    return-void
.end method

.method private static final onPositiveButtonClick$lambda-10$lambda-9$lambda-7(Lcom/android/launcher/UninstallRemoveAppPanel;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mCallBacks:Lcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;->onAnimationEnd()V

    return-void
.end method

.method private static final onPositiveButtonClick$lambda-10$lambda-9$lambda-8(Lcom/android/launcher/UninstallRemoveAppPanel;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mCallBacks:Lcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;->onAnimationEnd()V

    return-void
.end method

.method private static final onPositiveButtonClick$lambda-5(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/ArrayList;)V
    .registers 11

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$shortcutIconView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$itemInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$shortcutInfos"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZZZ)Z

    iget-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/OplusWorkspace;->stripEmptyScreens()V

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->clearSelectedViews(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static final onPositiveButtonClick$lambda-6(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 10

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$shortcutIconView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$itemInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZZZ)Z

    return-void
.end method

.method private final setPositiveBtnClickAble(Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    const/high16 v0, 0x100000

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/views/AlertPanelView;

    if-nez p0, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/launcher/views/AlertPanelView;->setPositiveBtnClickAble(Z)V

    :goto_10
    return-void
.end method

.method private final showConfirmPanel()V
    .registers 11

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    const-string v1, "UninstallRemoveAppPanel"

    if-eqz v0, :cond_13

    const-string/jumbo p0, "the panel is showing!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mIsclickUninstall:Z

    new-instance v2, Lcom/android/launcher/views/AlertPanelView$Builder;

    iget-object v3, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/launcher/views/AlertPanelView$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d021f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const-string v4, "mLayoutInflater.inflate(…ontent_view, null, false)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f0a05a4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mMainTitle:Landroid/widget/TextView;

    const v4, 0x7f0a05a5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUnInstallSubTitle:Landroid/widget/TextView;

    const v4, 0x7f0a059e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mDeleteIconSubTitle:Landroid/widget/TextView;

    const v4, 0x7f0a041a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/COUIRecyclerView;

    iput-object v4, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v7, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v4, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v4

    const-string/jumbo v6, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator"

    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    new-instance v4, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;

    iget-object v6, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    invoke-direct {v4, v6, v7}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v6, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v6, Lcom/android/launcher/UninstallRemoveAppPanel$showConfirmPanel$2;

    invoke-direct {v6, p0, v4}, Lcom/android/launcher/UninstallRemoveAppPanel$showConfirmPanel$2;-><init>(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;)V

    invoke-virtual {v4, v6}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->setOnItemClickLitener(Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$OnItemClickLitener;)V

    invoke-direct {p0, v2}, Lcom/android/launcher/UninstallRemoveAppPanel;->initTitleContent(Lcom/android/launcher/views/AlertPanelView$Builder;)V

    new-instance v4, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v6

    if-eqz v6, :cond_bd

    invoke-virtual {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->getDialogMarginBottomHeight()I

    move-result v6

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v6, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700e6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v6, 0x11

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_122

    :cond_bd
    iget-object v6, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700e2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v6, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700e1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    sget-boolean v6, Lcom/android/common/config/ScreenInfo;->hasNavigationBar:Z

    if-eqz v6, :cond_111

    iget-object v6, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v6, :cond_111

    iget-object v6, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v6

    if-eqz v6, :cond_111

    iget-object v6, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget-object v7, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    iget-object v9, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Lcom/android/common/config/ScreenInfo$Companion;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    const/16 v6, 0x50

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_122

    :cond_111
    iget-object v6, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    const/16 v6, 0x51

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_122
    iput-boolean v8, v4, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    invoke-virtual {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->getDialogMarginBottomHeight()I

    move-result v6

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, p0}, Lcom/android/launcher/views/AlertPanelView$Builder;->setActionCallBack(Lcom/android/launcher/views/AlertPanelView$ActionCallBack;)Lcom/android/launcher/views/AlertPanelView$Builder;

    invoke-virtual {v2, v3}, Lcom/android/launcher/views/AlertPanelView$Builder;->setCustomContentView(Landroid/view/View;)Lcom/android/launcher/views/AlertPanelView$Builder;

    invoke-virtual {v2, v4}, Lcom/android/launcher/views/AlertPanelView$Builder;->create(Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;)Lcom/android/launcher/views/AlertPanelView;

    move-result-object v2

    const-string v3, "builder.create(panelLayoutParams)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v2, v4, v0}, Landroid/widget/LinearLayout;->measure(II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alertPanelView.measuredHeight:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " maxHeitht:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " alertPanelView.heght:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " alertPanelView.measuredHeight:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "alertPanelView.layoutParams.height:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",dialogMarginBottomHeight:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->getDialogMarginBottomHeight()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    if-le v0, v3, :cond_1d6

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_1d0

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_1d0

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_1d0

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    div-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1d6

    :cond_1d0
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1d6
    :goto_1d6
    invoke-virtual {v2}, Lcom/android/launcher/views/AlertPanelView;->animateShow()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    invoke-virtual {v2}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getItemInfoWithIcon()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e4

    :cond_1f8
    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    if-nez v0, :cond_1fd

    goto :goto_205

    :cond_1fd
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_205
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v8, :cond_20e

    invoke-direct {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->updateConfirmBtnStates()V

    :cond_20e
    return-void
.end method

.method private final startUninstallTask()V
    .registers 5

    const-string v0, "UnInstallApp"

    const-string v1, "UninstallRemoveAppPanel"

    const-string/jumbo v2, "onPositiveButtonClick -- uninstallTask: "

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher/UninstallRemoveAppPanel$UninstallTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/UninstallRemoveAppPanel$UninstallTask;-><init>(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, p0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    sget-object p0, Lcom/android/common/util/SoundPlayerUtils;->INSTANCE:Lcom/android/common/util/SoundPlayerUtils;

    invoke-virtual {p0}, Lcom/android/common/util/SoundPlayerUtils;->playDeleteSound()V

    return-void
.end method

.method private final updateConfirmBtnStates()V
    .registers 15

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ce

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    iget-object v7, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v7

    if-nez v7, :cond_20

    return-void

    :cond_20
    invoke-virtual {v7}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    move-object v9, v8

    :cond_2a
    :goto_2a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_52

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v6}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getItemInfoWithIcon()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v11

    iget v11, v11, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-nez v10, :cond_40

    move-object v12, v8

    goto :goto_44

    :cond_40
    invoke-virtual {v10}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v12

    :goto_44
    const-string/jumbo v13, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v12, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    iget v12, v12, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-ne v11, v12, :cond_2a

    move-object v9, v10

    goto :goto_2a

    :cond_52
    invoke-virtual {v6}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getViewType()I

    move-result v7

    if-nez v7, :cond_a3

    iget-object v7, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v7, v6}, Lcom/android/launcher/familyspace/FamilySpaceUtil;->isFamilySpaceDefendedPackage(Landroid/content/Context;Lcom/android/launcher/model/UninstallItemInfoWithIcon;)Z

    move-result v7

    if-eqz v7, :cond_6c

    invoke-virtual {v6}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getSelectFlag()Z

    move-result v7

    if-eqz v7, :cond_6a

    invoke-virtual {v6}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getItemInfoWithIcon()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v8

    :cond_6a
    iput-object v8, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mFamilySpaceItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    :cond_6c
    invoke-virtual {v6}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getSelectFlag()Z

    move-result v7

    if-eqz v7, :cond_8a

    iget-object v7, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getItemInfoWithIcon()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_87

    iget-object v7, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getItemInfoWithIcon()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_9f

    :cond_8a
    iget-object v7, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getItemInfoWithIcon()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9f

    iget-object v7, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getItemInfoWithIcon()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_9f
    :goto_9f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    :cond_a3
    invoke-virtual {v6}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getSelectFlag()Z

    move-result v6

    if-eqz v6, :cond_bb

    iget-object v6, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-static {v6, v9}, Lz2/r;->x(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b8

    if-eqz v9, :cond_b8

    iget-object v6, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b8
    add-int/lit8 v3, v3, 0x1

    goto :goto_ca

    :cond_bb
    iget-object v6, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-static {v6, v9}, Lz2/r;->x(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ca

    if-eqz v9, :cond_ca

    iget-object v6, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_ca
    :goto_ca
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_b

    :cond_ce
    add-int v0, v2, v3

    const v6, 0x7f100009

    const v7, 0x7f12056d

    const v8, 0x7f100004

    const/4 v9, 0x1

    if-nez v0, :cond_138

    invoke-direct {p0, v1}, Lcom/android/launcher/UninstallRemoveAppPanel;->setPositiveBtnClickAble(Z)V

    if-eqz v4, :cond_100

    if-nez v5, :cond_100

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mMainTitle:Landroid/widget/TextView;

    if-nez v0, :cond_e9

    goto/16 :goto_18d

    :cond_e9
    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v6, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_18d

    :cond_100
    if-nez v4, :cond_121

    if-eqz v5, :cond_121

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mMainTitle:Landroid/widget/TextView;

    if-nez v0, :cond_10a

    goto/16 :goto_18d

    :cond_10a
    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p0, v8, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_18d

    :cond_121
    if-eqz v4, :cond_18d

    if-eqz v5, :cond_18d

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mMainTitle:Landroid/widget/TextView;

    if-nez v0, :cond_12a

    goto :goto_18d

    :cond_12a
    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18d

    :cond_138
    if-nez v2, :cond_158

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mMainTitle:Landroid/widget/TextView;

    if-nez v0, :cond_13f

    goto :goto_154

    :cond_13f
    iget-object v2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v8, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_154
    invoke-direct {p0, v9}, Lcom/android/launcher/UninstallRemoveAppPanel;->setPositiveBtnClickAble(Z)V

    goto :goto_18d

    :cond_158
    if-nez v3, :cond_178

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mMainTitle:Landroid/widget/TextView;

    if-nez v0, :cond_15f

    goto :goto_174

    :cond_15f
    iget-object v3, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v6, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_174
    invoke-direct {p0, v9}, Lcom/android/launcher/UninstallRemoveAppPanel;->setPositiveBtnClickAble(Z)V

    goto :goto_18d

    :cond_178
    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mMainTitle:Landroid/widget/TextView;

    if-nez v0, :cond_17d

    goto :goto_18a

    :cond_17d
    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_18a
    invoke-direct {p0, v9}, Lcom/android/launcher/UninstallRemoveAppPanel;->setPositiveBtnClickAble(Z)V

    :cond_18d
    :goto_18d
    return-void
.end method

.method private final updateItemClick(Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;I)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    invoke-virtual {v1}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getSelectFlag()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->setSelectFlag(Z)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    invoke-direct {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->updateConfirmBtnStates()V

    return-void
.end method


# virtual methods
.method public dialogDelayCloseTime()I
    .registers 1

    const/16 p0, 0x1c2

    return p0
.end method

.method public getDialogMarginBottomHeight()I
    .registers 10

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/common/config/ScreenInfo$Companion;->isNarBarShowingInNavMode(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_14

    const v3, 0x7f070502

    goto :goto_17

    :cond_14
    const v3, 0x7f070500

    :goto_17
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    const-string v4, "UninstallRemoveAppPanel"

    if-nez v3, :cond_2d

    const-string p0, "getDialogMarginBottomHeight, dragLayer is null!"

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v2, v2, 0x2

    return v2

    :cond_2d
    invoke-virtual {v3}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v3

    if-nez v3, :cond_3b

    const-string p0, "getDialogMarginBottomHeight, dragLayerInset is null!"

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v2, v2, 0x2

    return v2

    :cond_3b
    iget-object v5, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v1, :cond_5e

    if-eqz v5, :cond_5e

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    if-nez v7, :cond_5e

    iget-object v7, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v7

    if-nez v7, :cond_5e

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v7, 0x1

    invoke-virtual {v0, p0, v7}, Lcom/android/common/config/ScreenInfo$Companion;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result p0

    goto :goto_5f

    :cond_5e
    move p0, v6

    :goto_5f
    const-string v0, "inMultiWindowMode = "

    const-string v7, " -- narBarShowingInNavMode = "

    const-string v8, " -- dragLayerInset = "

    invoke-static {v0, v5, v7, v1, v8}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "UnInstallApp"

    invoke-static {v7, v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_7b

    if-nez v5, :cond_7b

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    :cond_7b
    add-int/2addr v2, v6

    add-int/2addr v2, p0

    return v2
.end method

.method public getInterceptCloseAnimate()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public final getMButtonClickListener()Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mButtonClickListener:Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;

    return-object p0
.end method

.method public final getMContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getMRemoveShortcutIconViews()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getMUninstallAppInfos()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getUninstallType(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo p0, "uninstallAppInfos"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_10

    const-string p0, "2"

    goto :goto_12

    :cond_10
    const-string p0, "1"

    :goto_12
    return-object p0
.end method

.method public onDialogOutsideClick()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mButtonClickListener:Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-interface {p0}, Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;->onDialogOutsideClick()V

    :goto_8
    return-void
.end method

.method public onNegativeButtonClick()V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    invoke-virtual {v2}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getItemInfoWithIcon()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1f
    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mButtonClickListener:Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;

    if-nez p0, :cond_24

    goto :goto_27

    :cond_24
    invoke-interface {p0}, Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;->onNegativeButtonClick()V

    :goto_27
    return-void
.end method

.method public onPositiveButtonClick()V
    .registers 16

    iget-boolean v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mIsclickUninstall:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mIsclickUninstall:Z

    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mFamilySpaceItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v1, :cond_28

    const-string v1, "UninstallRemoveAppPanel"

    const-string v2, "FamilySpace app uninstall: check app can be uninstall or not"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mFamilySpaceItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mFamilySpaceItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, v2, v0}, Lcom/android/launcher/familyspace/FamilySpaceUtil;->startFamilySpaceVerifier(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V

    :cond_28
    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_39

    return-void

    :cond_39
    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v0, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_55

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_55

    iput-boolean v3, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_55
    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_9a

    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_9a

    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v1, :cond_6e

    const/4 v1, 0x0

    goto :goto_79

    :cond_6e
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    :goto_79
    const-string/jumbo v4, "null cannot be cast to non-null type com.android.launcher.UninstallRemoveAppPanel.IconImageAdapter.IconImageVH"

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;

    invoke-virtual {v1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->getMAnimView()Lcom/sdk/deleteview/DeleteView;

    move-result-object v1

    if-nez v1, :cond_88

    goto :goto_9a

    :cond_88
    iget-object v4, v1, Lcom/sdk/deleteview/DeleteView;->b:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/opengl/GLSurfaceView;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v1, Lcom/sdk/deleteview/DeleteView;->a:Ll2/d;

    const/4 v4, 0x0

    iput v4, v1, Ll2/d;->o:F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Ll2/f;->a:J

    iput-boolean v0, v1, Ll2/d;->p:Z

    :cond_9a
    :goto_9a
    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_12a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_12a

    move v5, v3

    :goto_b0
    add-int/lit8 v6, v5, 0x1

    iget-object v7, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "mRemoveShortcutIconViews[i]"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v7

    check-cast v10, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v8, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v0

    if-ne v5, v8, :cond_db

    move v5, v0

    goto :goto_dc

    :cond_db
    move v5, v3

    :goto_dc
    if-eqz v5, :cond_109

    iget-boolean v5, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v5, :cond_ed

    iget-object v5, v10, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    new-instance v8, Lcom/android/launcher/i0;

    invoke-direct {v8, p0, v10, v7, v1}, Lcom/android/launcher/i0;-><init>(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/ArrayList;)V

    invoke-interface {v5, v3, v3, v0, v8}, Lcom/android/launcher3/IBubbleTextViewExt;->applyViewFadeState(ZIZLcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;)Z

    goto :goto_113

    :cond_ed
    iget-object v9, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v11, v7

    invoke-virtual/range {v9 .. v14}, Lcom/android/launcher/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZZZ)Z

    iget-object v5, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/OplusWorkspace;->stripEmptyScreens()V

    iget-object v5, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->clearSelectedViews(Ljava/util/ArrayList;)V

    goto :goto_113

    :cond_109
    iget-object v5, v10, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    new-instance v8, Lcom/android/launcher/j0;

    invoke-direct {v8, p0, v10, v7}, Lcom/android/launcher/j0;-><init>(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-interface {v5, v3, v3, v0, v8}, Lcom/android/launcher3/IBubbleTextViewExt;->applyViewFadeState(ZIZLcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;)Z

    :goto_113
    iget-object v5, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/statistics/LauncherStatistics;->statsRemoveAppFromWorkspace(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object v5, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v5

    invoke-virtual {v5, v7, v0}, Lcom/android/statistics/LauncherStatistics;->statsDeepShortCut(Lcom/android/launcher3/model/data/ItemInfo;I)V

    if-lt v6, v4, :cond_128

    goto :goto_12a

    :cond_128
    move v5, v6

    goto :goto_b0

    :cond_12a
    :goto_12a
    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13a

    new-instance v0, Landroidx/constraintlayout/motion/widget/a;

    invoke-direct {v0, p0, v2}, Landroidx/constraintlayout/motion/widget/a;-><init>(Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThreadAtFrontOfQueue(Ljava/lang/Runnable;)V

    :cond_13a
    return-void
.end method

.method public final refreshUninstalledSearchAppInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 9

    const-string v0, "UninstallRemoveAppPanel"

    :try_start_2
    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    const-string v1, "getLauncher(mContext)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_d} :catch_88

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    if-nez v1, :cond_19

    const-string p0, "getAppsView null view while uninstall app."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_19
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    if-nez p0, :cond_29

    const-string p0, "getActiveRecyclerView null view while uninstall app."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_29
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getSearchResults()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_30

    return-void

    :cond_30
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getSearchResults()Ljava/util/ArrayList;

    move-result-object p0

    const-string v0, "allAppsRecyclerView.searchResults"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_3c

    goto :goto_87

    :cond_3c
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_43

    goto :goto_87

    :cond_43
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_87

    :goto_4c
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v4, "searchResults[index]"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget-object v4, v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    if-nez v4, :cond_5f

    goto :goto_82

    :cond_5f
    iget-object v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v4}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_68

    goto :goto_82

    :cond_68
    iget-object v6, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    const/4 p0, 0x1

    iput-boolean p0, v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->isRemoved:Z

    return-void

    :cond_82
    :goto_82
    if-le v3, v2, :cond_85

    goto :goto_87

    :cond_85
    move v1, v3

    goto :goto_4c

    :cond_87
    :goto_87
    return-void

    :catch_88
    move-exception p0

    const-string p1, "launcher is illegal "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setMButtonClickListener(Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mButtonClickListener:Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;

    return-void
.end method

.method public final setMContext(Landroid/content/Context;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final showConfirmPanel(Lcom/android/launcher3/BubbleTextView;)V
    .registers 3

    const-string/jumbo v0, "selectedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, p1}, Lcom/android/launcher/UninstallRemoveAppPanel;->showConfirmPanel(Ljava/util/ArrayList;Ljava/util/List;Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;)V

    return-void
.end method

.method public final showConfirmPanel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 3

    const-string v0, "itemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, p1}, Lcom/android/launcher/UninstallRemoveAppPanel;->showConfirmPanel(Ljava/util/ArrayList;Ljava/util/List;Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;)V

    return-void
.end method

.method public showConfirmPanel(Ljava/util/ArrayList;Ljava/util/List;Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;",
            "Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_8f

    iget-object v2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_48

    if-nez p2, :cond_22

    :cond_20
    move v2, v1

    goto :goto_29

    :cond_22
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_20

    move v2, v0

    :goto_29
    if-eqz v2, :cond_48

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v4, "unInstallItemInfos[0]"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-direct {v3, p1, v0, v1}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;ZI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    :cond_48
    iget-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4e
    :goto_4e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v2, :cond_4e

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_84

    sget-object v3, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v3}, Lcom/android/common/util/PackageUtils$Companion;->getInstance()Lcom/android/common/util/PackageUtils;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/common/util/PackageUtils;->isNeedShowUninstallReminder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_84

    iget-object v3, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    invoke-direct {v4, v2, v1, v1}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;ZI)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_84
    iget-object v3, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    invoke-direct {v4, v2, v0, v1}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;ZI)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_8f
    :goto_8f
    if-eqz p2, :cond_c7

    iget-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9c
    :goto_9c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v2, :cond_9c

    iget-object v2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v4, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfoWithIcon"

    invoke-static {p2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-direct {v3, p2, v0, v0}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;ZI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    :cond_c7
    iput-object p3, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mButtonClickListener:Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;

    iget-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    if-ne p1, v0, :cond_db

    iget-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    goto :goto_dc

    :cond_db
    move-object p1, p2

    :goto_dc
    iget-object p3, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p3, p1}, Lcom/android/launcher/familyspace/FamilySpaceUtil;->isFamilySpaceDefendedPackage(Landroid/content/Context;Lcom/android/launcher/model/UninstallItemInfoWithIcon;)Z

    move-result p3

    if-eqz p3, :cond_f4

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez p1, :cond_e9

    goto :goto_ed

    :cond_e9
    invoke-virtual {p1}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getItemInfoWithIcon()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object p2

    :goto_ed
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, p2, v1}, Lcom/android/launcher/familyspace/FamilySpaceUtil;->startFamilySpaceVerifier(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V

    return-void

    :cond_f4
    invoke-direct {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->showConfirmPanel()V

    return-void
.end method

.method public final startFamilySpaceUninstall(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V
    .registers 6

    const-string v0, "itemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startFamilySpaceUninstall: isLauncherDialogShown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", itemInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnInstallApp"

    const-string v2, "UninstallRemoveAppPanel"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3a

    new-instance p2, Lcom/android/launcher/UninstallRemoveAppPanel$UninstallTask;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher/UninstallRemoveAppPanel$UninstallTask;-><init>(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p1, v1, [Ljava/lang/Void;

    const/4 v1, 0x0

    aput-object v1, p1, v0

    invoke-virtual {p2, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_56

    :cond_3a
    iget-object p2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    invoke-direct {v2, p1, v1, v0}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;ZI)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->showConfirmPanel()V

    :goto_56
    return-void
.end method
