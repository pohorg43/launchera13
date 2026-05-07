.class public final Lcom/android/launcher3/appedit/AppEditActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/appedit/AppEditActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/appedit/AppEditActivity$Companion;

.field public static final DISMISS_DELAYED:J = 0x64L

.field public static final KEY_APP_UID:Ljava/lang/String; = "appUid"

.field public static final KEY_COMPONENT_NAME:Ljava/lang/String; = "componentName"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final KEY_TITLE_NAME:Ljava/lang/String; = "titleName"

.field public static final REQUEST_CODE_FOR_APP_EDIT:I = 0x186a1

.field private static final TAG:Ljava/lang/String; = "AppEditActivity"


# instance fields
.field private final mAppEditBroadcastReceiver:Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;

.field private mAppUid:I

.field private mComponentName:Ljava/lang/String;

.field private mCurrentIndex:I

.field private mCurrentMode:I

.field private mCurrentOrientation:I

.field private mLastIndex:I

.field private mPackageName:Ljava/lang/String;

.field private mPanel:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

.field private mTitleName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/appedit/AppEditActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/appedit/AppEditActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/appedit/AppEditActivity;->Companion:Lcom/android/launcher3/appedit/AppEditActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    new-instance v0, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;

    invoke-direct {v0}, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mAppEditBroadcastReceiver:Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-direct {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mPanel:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/appedit/AppEditActivity;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/appedit/AppEditActivity;->showDialogView$lambda-4$lambda-3$lambda-2$lambda-1$lambda-0(Lcom/android/launcher3/appedit/AppEditActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/appedit/AppEditActivity;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/appedit/AppEditActivity;->showDialogView$lambda-4$lambda-3$lambda-2(Lcom/android/launcher3/appedit/AppEditActivity;)V

    return-void
.end method

.method private static final showDialogView$lambda-4$lambda-3$lambda-2(Lcom/android/launcher3/appedit/AppEditActivity;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditActivity;->getMPanel()Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "COUIBottomSheetDialog "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppEdit"

    const-string v2, "AppEditActivity"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditActivity;->getMPanel()Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    instance-of v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v1, :cond_2a

    check-cast v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    if-nez v0, :cond_2e

    goto :goto_36

    :cond_2e
    new-instance v1, Lcom/android/launcher/folder/recommend/a;

    invoke-direct {v1, p0}, Lcom/android/launcher/folder/recommend/a;-><init>(Lcom/android/launcher3/appedit/AppEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_36
    return-void
.end method

.method private static final showDialogView$lambda-4$lambda-3$lambda-2$lambda-1$lambda-0(Lcom/android/launcher3/appedit/AppEditActivity;Landroid/content/DialogInterface;)V
    .registers 3

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditActivity;->getMCurrentIndex()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditActivity;->getMLastIndex()I

    move-result v0

    if-ne p1, v0, :cond_13

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditActivity;->finish()V

    :cond_13
    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditActivity;->getMCurrentIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appedit/AppEditActivity;->setMLastIndex(I)V

    return-void
.end method

.method public static final startAct(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Integer;)Landroid/content/Intent;
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/appedit/AppEditActivity;->Companion:Lcom/android/launcher3/appedit/AppEditActivity$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/appedit/AppEditActivity$Companion;->startAct(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public finish()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const v0, 0x7f01000c

    const v1, 0x7f01000d

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public final getMAppEditBroadcastReceiver()Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mAppEditBroadcastReceiver:Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;

    return-object p0
.end method

.method public final getMAppUid()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mAppUid:I

    return p0
.end method

.method public final getMComponentName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mComponentName:Ljava/lang/String;

    return-object p0
.end method

.method public final getMCurrentIndex()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mCurrentIndex:I

    return p0
.end method

.method public final getMCurrentMode()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mCurrentMode:I

    return p0
.end method

.method public final getMCurrentOrientation()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mCurrentOrientation:I

    return p0
.end method

.method public final getMLastIndex()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mLastIndex:I

    return p0
.end method

.method public final getMPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getMPanel()Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mPanel:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    return-object p0
.end method

.method public final getMTitleName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mTitleName:Ljava/lang/String;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    const-string/jumbo v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mPanel:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1a

    goto :goto_21

    :cond_1a
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-ne v1, v3, :cond_21

    move v2, v3

    :cond_21
    :goto_21
    if-eqz v2, :cond_4e

    iget v1, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mCurrentOrientation:I

    if-eq v1, p1, :cond_34

    iget-object v0, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mPanel:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_30

    goto :goto_4e

    :cond_30
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_4e

    :cond_34
    iget v1, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mCurrentMode:I

    if-eq v1, v0, :cond_4e

    iget v1, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mCurrentIndex:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mCurrentIndex:I

    iget-object v1, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mPanel:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_46

    goto :goto_49

    :cond_46
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :goto_49
    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditActivity;->showDialogView()V

    iput v0, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mCurrentMode:I

    :cond_4e
    :goto_4e
    iput p1, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mCurrentOrientation:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const p1, 0x7f0d00ec

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->d()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a(Landroid/content/Context;)V

    sget-object p1, Lcom/android/common/util/IntentUtils;->Companion:Lcom/android/common/util/IntentUtils$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "packageName"

    invoke-virtual {p1, v0, v2}, Lcom/android/common/util/IntentUtils$Companion;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "componentName"

    invoke-virtual {p1, v0, v2}, Lcom/android/common/util/IntentUtils$Companion;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mComponentName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "titleName"

    invoke-virtual {p1, v0, v2}, Lcom/android/common/util/IntentUtils$Companion;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mTitleName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appUid"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/common/util/IntentUtils$Companion;->getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mAppUid:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    iput p1, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mCurrentMode:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mCurrentOrientation:I

    const-string p1, " onCreate packageName "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "  componentName "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mComponentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "  appUid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mAppUid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  titleName "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mTitleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppEdit"

    const-string v1, "AppEditActivity"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditActivity;->showDialogView()V

    iget-object p1, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mAppEditBroadcastReceiver:Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;

    new-instance v0, Lcom/android/launcher3/appedit/AppEditActivity$onCreate$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/appedit/AppEditActivity$onCreate$1;-><init>(Lcom/android/launcher3/appedit/AppEditActivity;)V

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;->registerReceiver(Landroid/content/Context;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mAppEditBroadcastReceiver:Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;->unRegisterReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public onStop()V
    .registers 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditActivity;->finish()V

    return-void
.end method

.method public final setMAppUid(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mAppUid:I

    return-void
.end method

.method public final setMComponentName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mComponentName:Ljava/lang/String;

    return-void
.end method

.method public final setMCurrentIndex(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mCurrentIndex:I

    return-void
.end method

.method public final setMCurrentMode(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mCurrentMode:I

    return-void
.end method

.method public final setMCurrentOrientation(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mCurrentOrientation:I

    return-void
.end method

.method public final setMLastIndex(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mLastIndex:I

    return-void
.end method

.method public final setMPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public final setMPanel(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mPanel:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    return-void
.end method

.method public final setMTitleName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mTitleName:Ljava/lang/String;

    return-void
.end method

.method public final showDialogView()V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/appedit/AppEditActivity;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_4f

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditActivity;->getMTitleName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_4f

    :cond_c
    sget-object v1, Lcom/android/launcher3/appedit/AppCustomizerManager;->Companion:Lcom/android/launcher3/appedit/AppCustomizerManager$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditActivity;->getMPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditActivity;->getMComponentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditActivity;->getMAppUid()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditActivity;->getMTitleName()Ljava/lang/String;

    move-result-object v5

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/appedit/AppCustomizerManager$Companion;->showPanelFragment(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroidx/fragment/app/FragmentActivity;)Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/appedit/AppEditActivity;->setMPanel(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)V

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditActivity;->getMPanel()Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->setHeight(I)V

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_45

    goto :goto_4f

    :cond_45
    new-instance v1, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher3/appedit/AppEditActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4f
    return-void
.end method
