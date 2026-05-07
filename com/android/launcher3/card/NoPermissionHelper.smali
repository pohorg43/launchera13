.class public final Lcom/android/launcher3/card/NoPermissionHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/NoPermissionHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/NoPermissionHelper$Companion;

.field private static final TAG:Ljava/lang/String; = "LauncherCardView-NP"


# instance fields
.field private final cardView:Lcom/android/launcher3/card/CommonCardView;

.field private final context:Landroid/content/Context;

.field private noPermissionView:Landroid/view/View;

.field private permissionIconView:Landroid/widget/ImageView;

.field private permissionImage:Landroid/widget/ImageView;

.field private permissionSetting:Landroid/widget/TextView;

.field private permissionTip:Landroid/widget/TextView;

.field private preSysTintColor:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/NoPermissionHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/NoPermissionHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/NoPermissionHelper;->Companion:Lcom/android/launcher3/card/NoPermissionHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/card/CommonCardView;)V
    .registers 4

    const-string v0, "cardView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->cardView:Lcom/android/launcher3/card/CommonCardView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->context:Landroid/content/Context;

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/card/NoPermissionHelper;->initNoPermissionView(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/NoPermissionHelper;->initNoPermissionForSettingsView$lambda-0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/NoPermissionHelper;->initNoPermissionForAppAdviceCard$lambda-3(Landroid/view/View;)V

    return-void
.end method

.method private final initNoPermissionForAppAdviceCard(Landroid/content/Context;)V
    .registers 4

    const v0, 0x7f0d016e

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->noPermissionView:Landroid/view/View;

    if-nez p1, :cond_d

    goto :goto_12

    :cond_d
    sget-object v0, Lcom/android/launcher3/card/f;->a:Lcom/android/launcher3/card/f;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_12
    iget-object p1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->noPermissionView:Landroid/view/View;

    if-nez p1, :cond_17

    goto :goto_21

    :cond_17
    const v0, 0x7f0a011c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    :goto_21
    iput-object v1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionIconView:Landroid/widget/ImageView;

    return-void
.end method

.method private static final initNoPermissionForAppAdviceCard$lambda-3(Landroid/view/View;)V
    .registers 1

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardPermissionManager;->launchCardPermissionActivity()V

    return-void
.end method

.method private final initNoPermissionForSettingsView(Landroid/content/Context;)V
    .registers 5

    const v0, 0x7f0d016f

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->noPermissionView:Landroid/view/View;

    if-nez v0, :cond_d

    goto :goto_12

    :cond_d
    sget-object v2, Lcom/android/launcher3/card/e;->a:Lcom/android/launcher3/card/e;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_12
    iget-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->noPermissionView:Landroid/view/View;

    if-nez v0, :cond_18

    move-object v0, v1

    goto :goto_21

    :cond_18
    const v2, 0x7f0a0124

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_21
    iput-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionSetting:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->noPermissionView:Landroid/view/View;

    if-nez v0, :cond_29

    move-object v0, v1

    goto :goto_32

    :cond_29
    const v2, 0x7f0a0123

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    :goto_32
    iput-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->noPermissionView:Landroid/view/View;

    if-nez v0, :cond_39

    goto :goto_43

    :cond_39
    const v1, 0x7f0a0125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    :goto_43
    iput-object v1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionTip:Landroid/widget/TextView;

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_53

    if-nez v1, :cond_4c

    goto :goto_5c

    :cond_4c
    const v0, 0x7f12048a

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5c

    :cond_53
    if-nez v1, :cond_56

    goto :goto_5c

    :cond_56
    const v0, 0x7f12016a

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_5c
    iget-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionSetting:Landroid/widget/TextView;

    const/4 v1, 0x4

    if-nez v0, :cond_62

    goto :goto_65

    :cond_62
    invoke-static {v0, v1}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->b(Landroid/widget/TextView;I)V

    :goto_65
    iget-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionTip:Landroid/widget/TextView;

    if-nez v0, :cond_6a

    goto :goto_6d

    :cond_6a
    invoke-static {v0, v1}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->b(Landroid/widget/TextView;I)V

    :goto_6d
    const v0, 0x7f0401f0

    const v1, 0x7f060097

    invoke-static {p1, v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->preSysTintColor:I

    iget-object p0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionSetting:Landroid/widget/TextView;

    if-nez p0, :cond_7e

    goto :goto_81

    :cond_7e
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_81
    return-void
.end method

.method private static final initNoPermissionForSettingsView$lambda-0(Landroid/view/View;)V
    .registers 1

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardPermissionManager;->launchCardPermissionActivity()V

    return-void
.end method


# virtual methods
.method public final addOrRemoveView(Z)V
    .registers 2

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->cardView:Lcom/android/launcher3/card/CommonCardView;

    iget-object p0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->noPermissionView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_11

    :cond_a
    iget-object p1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->cardView:Lcom/android/launcher3/card/CommonCardView;

    iget-object p0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->noPermissionView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :goto_11
    return-void
.end method

.method public final getCardView()Lcom/android/launcher3/card/CommonCardView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->cardView:Lcom/android/launcher3/card/CommonCardView;

    return-object p0
.end method

.method public final hasShowing()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->cardView:Lcom/android/launcher3/card/CommonCardView;

    iget-object p0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->noPermissionView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p0

    if-ltz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final initNoPermissionView(Landroid/content/Context;I)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/AppAdviceCheck;->INSTANCE:Lcom/android/launcher/AppAdviceCheck;

    invoke-virtual {v0, p2}, Lcom/android/launcher/AppAdviceCheck;->isAppAdviceCard(I)Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/NoPermissionHelper;->initNoPermissionForAppAdviceCard(Landroid/content/Context;)V

    goto :goto_14

    :cond_11
    invoke-direct {p0, p1}, Lcom/android/launcher3/card/NoPermissionHelper;->initNoPermissionForSettingsView(Landroid/content/Context;)V

    :goto_14
    return-void
.end method

.method public final onAttach()Z
    .registers 3

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/CardPermissionManager;->isCardPreload(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->cardView:Lcom/android/launcher3/card/CommonCardView;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->fetchPreloadResources()V

    goto :goto_2e

    :cond_1c
    invoke-virtual {p0}, Lcom/android/launcher3/card/NoPermissionHelper;->hasShowing()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->cardView:Lcom/android/launcher3/card/CommonCardView;

    invoke-virtual {v0}, Lcom/android/launcher3/card/LauncherCardView;->fetchNoPermissionCardName()V

    iget-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->cardView:Lcom/android/launcher3/card/CommonCardView;

    iget-object p0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->noPermissionView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2e
    :goto_2e
    const/4 p0, 0x1

    return p0

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method public final setDescriptionForView(Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionSetting:Landroid/widget/TextView;

    if-nez p1, :cond_7

    goto :goto_b

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_b
    iget-object p0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->cardView:Lcom/android/launcher3/card/CommonCardView;

    const-string p1, ""

    invoke-interface {p0, p1}, Lcom/oplus/card/manager/domain/ICardView;->setCardNameAndUpdateDb(Ljava/lang/String;)V

    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->cardView:Lcom/android/launcher3/card/CommonCardView;

    invoke-virtual {v0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    const-string v1, "cardView.itemInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_27

    const v0, 0x7f1200ee

    goto :goto_33

    :cond_27
    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_30

    const v0, 0x7f1200f1

    goto :goto_33

    :cond_30
    const v0, 0x7f1200ef

    :goto_33
    iget-object v1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionSetting:Landroid/widget/TextView;

    if-nez v1, :cond_38

    goto :goto_47

    :cond_38
    iget-object v2, p0, Lcom/android/launcher3/card/NoPermissionHelper;->context:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_47
    iget-object p0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->cardView:Lcom/android/launcher3/card/CommonCardView;

    invoke-interface {p0, p1}, Lcom/oplus/card/manager/domain/ICardView;->setCardNameAndUpdateDb(Ljava/lang/String;)V

    return-void
.end method

.method public final updatePermissionAppAdviceView(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->noPermissionView:Landroid/view/View;

    if-nez v0, :cond_d

    const-string p0, "LauncherCardView-NP"

    const-string/jumbo p1, "updatePermissionSettingsView() do nothing, noPermissionView or mPermissionImage is null !"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    const/16 v1, 0x8

    if-eqz p1, :cond_40

    const/4 p1, 0x0

    if-nez v0, :cond_15

    goto :goto_18

    :cond_15
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_18
    iget-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->noPermissionView:Landroid/view/View;

    if-nez v0, :cond_1d

    goto :goto_21

    :cond_1d
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_21
    iget-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->cardView:Lcom/android/launcher3/card/CommonCardView;

    invoke-virtual {v0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    const-string v2, "cardView.itemInfo"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionIconView:Landroid/widget/ImageView;

    if-nez p0, :cond_31

    goto :goto_46

    :cond_31
    sget-object v2, Lcom/android/launcher/AppAdviceCheck;->INSTANCE:Lcom/android/launcher/AppAdviceCheck;

    iget v0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v2, v0}, Lcom/android/launcher/AppAdviceCheck;->isAppAdviceCard4plus2(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    move v1, p1

    :cond_3c
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_46

    :cond_40
    if-nez v0, :cond_43

    goto :goto_46

    :cond_43
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_46
    return-void
.end method

.method public final updatePermissionSettingColorIfNeeded()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->context:Landroid/content/Context;

    const v1, 0x7f0401f0

    const v2, 0x7f060097

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->preSysTintColor:I

    if-eq v0, v1, :cond_28

    invoke-virtual {p0}, Lcom/android/launcher3/card/NoPermissionHelper;->hasShowing()Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, "LauncherCardView-NP"

    const-string/jumbo v2, "update permission setting text color"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->preSysTintColor:I

    iget-object p0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionSetting:Landroid/widget/TextView;

    if-nez p0, :cond_25

    goto :goto_28

    :cond_25
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_28
    :goto_28
    return-void
.end method

.method public final updatePermissionSettingsView(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->noPermissionView:Landroid/view/View;

    if-nez v0, :cond_d

    const-string p0, "LauncherCardView-NP"

    const-string/jumbo p1, "updatePermissionDefView() do nothing, mNoPerMissionView or mPermissionImage is null !"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    if-nez p1, :cond_15

    goto :goto_18

    :cond_15
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_18
    iget-object p1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionSetting:Landroid/widget/TextView;

    if-nez p1, :cond_1d

    goto :goto_20

    :cond_1d
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_20
    iget-object p0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionTip:Landroid/widget/TextView;

    if-nez p0, :cond_25

    goto :goto_4b

    :cond_25
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4b

    :cond_29
    iget-object p1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionImage:Landroid/widget/ImageView;

    const/16 v0, 0x8

    if-nez p1, :cond_30

    goto :goto_33

    :cond_30
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_33
    iget-object p1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionSetting:Landroid/widget/TextView;

    if-nez p1, :cond_38

    goto :goto_3b

    :cond_38
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3b
    iget-object p1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionTip:Landroid/widget/TextView;

    if-nez p1, :cond_40

    goto :goto_43

    :cond_40
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_43
    iget-object p0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->noPermissionView:Landroid/view/View;

    if-nez p0, :cond_48

    goto :goto_4b

    :cond_48
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_4b
    return-void
.end method
