.class public final Lcom/android/launcher/BreenoSkillAction;
.super Lcom/oplus/ovoiceskillservice/SkillActionListener;
.source ""


# annotations
.annotation runtime Lcom/oplus/ovoiceskillservice/SkillActions;
    path = ""
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/BreenoSkillAction$Companion;
    }
.end annotation


# static fields
.field public static final ACTION_CLOSE_ACTIVITY:Ljava/lang/String; = "com.android.launcher.intent.action.CLOSE_ACTIVITY"

.field public static final CLASS_NAME:Ljava/lang/String; = "className"

.field public static final Companion:Lcom/android/launcher/BreenoSkillAction$Companion;


# instance fields
.field private final ACTION_LAUNCHER_SETTINGS:Ljava/lang/String;

.field private final INTENT_EXTRA_STATE:Ljava/lang/String;

.field private final LAUNCHER_CLASS_NAME:Ljava/lang/String;

.field private final LAUNCHER_PACKAGE_NAME:Ljava/lang/String;

.field private final LAUNCHER_PROVIDER_URI:Landroid/net/Uri;

.field private final TAG:Ljava/lang/String;

.field private final TOGGLE_BAR:Ljava/lang/String;

.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation runtime Lcom/oplus/ovoiceskillservice/Autowired;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/BreenoSkillAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/BreenoSkillAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/BreenoSkillAction;->Companion:Lcom/android/launcher/BreenoSkillAction$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/ovoiceskillservice/SkillActionListener;-><init>()V

    const-string v0, "BreenoSkillAction"

    iput-object v0, p0, Lcom/android/launcher/BreenoSkillAction;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "state"

    iput-object v0, p0, Lcom/android/launcher/BreenoSkillAction;->INTENT_EXTRA_STATE:Ljava/lang/String;

    const-string v0, "ToggleBar"

    iput-object v0, p0, Lcom/android/launcher/BreenoSkillAction;->TOGGLE_BAR:Ljava/lang/String;

    const-string v0, "com.android.launcher.action.WALLPAPER_CATEGORY_SETTINGS"

    iput-object v0, p0, Lcom/android/launcher/BreenoSkillAction;->ACTION_LAUNCHER_SETTINGS:Ljava/lang/String;

    const-string v0, "com.android.launcher"

    iput-object v0, p0, Lcom/android/launcher/BreenoSkillAction;->LAUNCHER_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "com.android.launcher.Launcher"

    iput-object v0, p0, Lcom/android/launcher/BreenoSkillAction;->LAUNCHER_CLASS_NAME:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/BreenoSkillAction;->actions:Ljava/util/List;

    const-string v0, "content://com.android.launcher.settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/BreenoSkillAction;->LAUNCHER_PROVIDER_URI:Landroid/net/Uri;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/BreenoSkillAction;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/BreenoSkillAction;->switchLauncherModel$lambda-1(Lcom/android/launcher/BreenoSkillAction;)V

    return-void
.end method

.method public static final synthetic access$getMContext$p(Lcom/android/launcher/BreenoSkillAction;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/BreenoSkillAction;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher/BreenoSkillAction;Lcom/oplus/ovoiceskillservice/ISkillSession;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/BreenoSkillAction;->goToRecent$lambda-0(Lcom/android/launcher/BreenoSkillAction;Lcom/oplus/ovoiceskillservice/ISkillSession;)V

    return-void
.end method

.method private final createTtsCard(I)Lcom/oplus/ovoicecommon/bean/ISkillCard;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/BreenoSkillAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/BreenoSkillAction;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/ovoicecommon/bean/OVoiceSkillCardFactory;->createTextCard(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/ovoicecommon/bean/ISkillCard;

    move-result-object p0

    const-string p1, "createTextCard(displayTextIcon, ttsTextStartIcon)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final goToRecent$lambda-0(Lcom/android/launcher/BreenoSkillAction;Lcom/oplus/ovoiceskillservice/ISkillSession;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f120249

    invoke-direct {p0, v0}, Lcom/android/launcher/BreenoSkillAction;->createTtsCard(I)Lcom/oplus/ovoicecommon/bean/ISkillCard;

    move-result-object p0

    if-nez p1, :cond_10

    goto :goto_14

    :cond_10
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/oplus/ovoiceskillservice/ISkillSession;->completeAction(ILcom/oplus/ovoicecommon/bean/ISkillCard;)Z

    :goto_14
    return-void
.end method

.method private final startPage(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x10208000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/launcher/BreenoSkillAction;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final switchLauncherModel(Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher/mode/LauncherMode;)V
    .registers 6

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v1, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    iget-object v2, p0, Lcom/android/launcher/BreenoSkillAction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLauncherLayoutLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object p1, p0, Lcom/android/launcher/BreenoSkillAction;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "return switchLauncherModel because isLauncherLayoutLocked"

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/launcher/i;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/launcher/i;-><init>(Lcom/android/launcher/BreenoSkillAction;I)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_28
    iget-object v1, p0, Lcom/android/launcher/BreenoSkillAction;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/launcher/BreenoSkillAction$switchLauncherModel$2;

    invoke-direct {v2, v0, p0}, Lcom/android/launcher/BreenoSkillAction$switchLauncherModel$2;-><init>(Landroid/os/Handler;Lcom/android/launcher/BreenoSkillAction;)V

    invoke-static {v1, p1, p2, v2}, Lcom/android/common/util/LauncherModeUtil;->switchLauncherModeAndNotify(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher/mode/LauncherMode;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final switchLauncherModel$lambda-1(Lcom/android/launcher/BreenoSkillAction;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/BreenoSkillAction;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    return-void
.end method


# virtual methods
.method public final callProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9

    const-string/jumbo v0, "methodName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_7a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto/16 :goto_7a

    :cond_11
    :try_start_11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/BreenoSkillAction;->LAUNCHER_PROVIDER_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1b} :catch_2e
    .catchall {:try_start_11 .. :try_end_1b} :catchall_2b

    if-eqz v1, :cond_24

    :try_start_1d
    invoke-virtual {v1, p2, p3, p4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_21} :catch_22
    .catchall {:try_start_1d .. :try_end_21} :catchall_6a

    goto :goto_24

    :catch_22
    move-exception p3

    goto :goto_30

    :cond_24
    :goto_24
    if-nez v1, :cond_27

    goto :goto_67

    :cond_27
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_67

    :catchall_2b
    move-exception p0

    move-object p1, v0

    goto :goto_6d

    :catch_2e
    move-exception p3

    move-object v1, v0

    :goto_30
    :try_start_30
    iget-object v2, p0, Lcom/android/launcher/BreenoSkillAction;->TAG:Ljava/lang/String;

    const-string v3, "callProvider try again, remoteException = "

    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_6a

    :try_start_3b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p3, p0, Lcom/android/launcher/BreenoSkillAction;->LAUNCHER_PROVIDER_URI:Landroid/net/Uri;

    invoke-virtual {p1, p3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_45} :catch_4e
    .catchall {:try_start_3b .. :try_end_45} :catchall_6a

    if-eqz p1, :cond_5b

    :try_start_47
    invoke-virtual {p1, p2, v0, p4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4b} :catch_4c
    .catchall {:try_start_47 .. :try_end_4b} :catchall_68

    goto :goto_5b

    :catch_4c
    move-exception p2

    goto :goto_50

    :catch_4e
    move-exception p2

    move-object p1, v0

    :goto_50
    :try_start_50
    iget-object p0, p0, Lcom/android/launcher/BreenoSkillAction;->TAG:Ljava/lang/String;

    const-string p3, "callProvider remoteExceptionAgain = "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_50 .. :try_end_5b} :catchall_68

    :cond_5b
    :goto_5b
    if-nez v1, :cond_5e

    goto :goto_61

    :cond_5e
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    :goto_61
    if-nez p1, :cond_64

    goto :goto_67

    :cond_64
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    :goto_67
    return-object v0

    :catchall_68
    move-exception p0

    goto :goto_6c

    :catchall_6a
    move-exception p0

    move-object p1, v0

    :goto_6c
    move-object v0, v1

    :goto_6d
    if-nez v0, :cond_70

    goto :goto_73

    :cond_70
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    :goto_73
    if-nez p1, :cond_76

    goto :goto_79

    :cond_76
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    :goto_79
    throw p0

    :cond_7a
    :goto_7a
    iget-object p0, p0, Lcom/android/launcher/BreenoSkillAction;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "callProvider context = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", methodName = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final cleanLockSetting(Lcom/oplus/ovoiceskillservice/ISkillSession;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/oplus/ovoiceskillservice/RegAction;
        value = "LockSetting.Clean"
    .end annotation

    iget-object p2, p0, Lcom/android/launcher/BreenoSkillAction;->TAG:Ljava/lang/String;

    if-nez p1, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {p1}, Lcom/oplus/ovoiceskillservice/ISkillSession;->getActionID()Ljava/lang/String;

    move-result-object v0

    :goto_a
    const-string/jumbo v1, "onActionExecution:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.action.GABREENOCLEAN"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "CALL_PKG"

    const-string v1, "com.heytap.speechassist"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/launcher/BreenoSkillAction;->LAUNCHER_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/launcher/BreenoSkillAction;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2c

    goto :goto_2f

    :cond_2c
    invoke-virtual {v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_2f
    const p2, 0x7f120172

    invoke-direct {p0, p2}, Lcom/android/launcher/BreenoSkillAction;->createTtsCard(I)Lcom/oplus/ovoicecommon/bean/ISkillCard;

    move-result-object p0

    if-nez p1, :cond_39

    goto :goto_3d

    :cond_39
    const/4 p2, 0x0

    invoke-interface {p1, p2, p0}, Lcom/oplus/ovoiceskillservice/ISkillSession;->completeAction(ILcom/oplus/ovoicecommon/bean/ISkillCard;)Z

    :goto_3d
    return-void
.end method

.method public final getACTION_LAUNCHER_SETTINGS()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/BreenoSkillAction;->ACTION_LAUNCHER_SETTINGS:Ljava/lang/String;

    return-object p0
.end method

.method public final getActions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/BreenoSkillAction;->actions:Ljava/util/List;

    return-object p0
.end method

.method public final getINTENT_EXTRA_STATE()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/BreenoSkillAction;->INTENT_EXTRA_STATE:Ljava/lang/String;

    return-object p0
.end method

.method public final getLAUNCHER_CLASS_NAME()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/BreenoSkillAction;->LAUNCHER_CLASS_NAME:Ljava/lang/String;

    return-object p0
.end method

.method public final getLAUNCHER_PACKAGE_NAME()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/BreenoSkillAction;->LAUNCHER_PACKAGE_NAME:Ljava/lang/String;

    return-object p0
.end method

.method public final getLAUNCHER_PROVIDER_URI()Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/BreenoSkillAction;->LAUNCHER_PROVIDER_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public final getTAG()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/BreenoSkillAction;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public final getTOGGLE_BAR()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/BreenoSkillAction;->TOGGLE_BAR:Ljava/lang/String;

    return-object p0
.end method

.method public final goToRecent(Lcom/oplus/ovoiceskillservice/ISkillSession;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/oplus/ovoiceskillservice/RegAction;
        value = "GoToRecent"
    .end annotation

    iget-object p2, p0, Lcom/android/launcher/BreenoSkillAction;->TAG:Ljava/lang/String;

    if-nez p1, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {p1}, Lcom/oplus/ovoiceskillservice/ISkillSession;->getActionID()Ljava/lang/String;

    move-result-object v0

    :goto_a
    const-string/jumbo v1, "onActionExecution:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.action.GAENTER"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/BreenoSkillAction;->LAUNCHER_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/launcher/BreenoSkillAction;->mContext:Landroid/content/Context;

    if-nez v0, :cond_25

    goto :goto_28

    :cond_25
    invoke-virtual {v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_28
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Landroidx/constraintlayout/motion/widget/a;

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/motion/widget/a;-><init>(Lcom/android/launcher/BreenoSkillAction;Lcom/oplus/ovoiceskillservice/ISkillSession;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final hasFeature(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/BreenoSkillAction;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final openLauncherLockAodPage(Lcom/oplus/ovoiceskillservice/ISkillSession;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/oplus/ovoiceskillservice/RegAction;
        value = "OpenLauncherLockAodPage"
    .end annotation

    iget-object p2, p0, Lcom/android/launcher/BreenoSkillAction;->TAG:Ljava/lang/String;

    if-nez p1, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {p1}, Lcom/oplus/ovoiceskillservice/ISkillSession;->getActionID()Ljava/lang/String;

    move-result-object v0

    :goto_a
    const-string/jumbo v1, "onActionExecution:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher/BreenoSkillAction;->ACTION_LAUNCHER_SETTINGS:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/launcher/BreenoSkillAction;->startPage(Ljava/lang/String;)V

    const p2, 0x7f120377

    invoke-direct {p0, p2}, Lcom/android/launcher/BreenoSkillAction;->createTtsCard(I)Lcom/oplus/ovoicecommon/bean/ISkillCard;

    move-result-object p0

    if-nez p1, :cond_23

    goto :goto_27

    :cond_23
    const/4 p2, 0x0

    invoke-interface {p1, p2, p0}, Lcom/oplus/ovoiceskillservice/ISkillSession;->completeAction(ILcom/oplus/ovoicecommon/bean/ISkillCard;)Z

    :goto_27
    return-void
.end method

.method public final setActions(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/BreenoSkillAction;->actions:Ljava/util/List;

    return-void
.end method

.method public final startLauncherActivity()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher/BreenoSkillAction;->LAUNCHER_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_16
    iget-object v1, p0, Lcom/android/launcher/BreenoSkillAction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1e
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_1e} :catch_1f

    goto :goto_2c

    :catch_1f
    move-exception v0

    iget-object p0, p0, Lcom/android/launcher/BreenoSkillAction;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startLauncherActivity can\'t startActivity : "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

.method public final toToggleBarIcon(Lcom/oplus/ovoiceskillservice/ISkillSession;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/oplus/ovoiceskillservice/RegAction;
        value = "ToToggleBarIcon"
    .end annotation

    iget-object p2, p0, Lcom/android/launcher/BreenoSkillAction;->TAG:Ljava/lang/String;

    if-nez p1, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {p1}, Lcom/oplus/ovoiceskillservice/ISkillSession;->getActionID()Ljava/lang/String;

    move-result-object v0

    :goto_a
    const-string/jumbo v1, "onActionExecution:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object p2

    new-instance v0, Lcom/oplus/quickstep/events/event/BreenoSkillEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/events/event/BreenoSkillEvent;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/oplus/quickstep/events/EventBus;->post(Lcom/oplus/quickstep/events/EventBus$Event;)V

    const p2, 0x7f12026e

    invoke-direct {p0, p2}, Lcom/android/launcher/BreenoSkillAction;->createTtsCard(I)Lcom/oplus/ovoicecommon/bean/ISkillCard;

    move-result-object p0

    if-nez p1, :cond_2b

    goto :goto_2f

    :cond_2b
    const/4 p2, 0x0

    invoke-interface {p1, p2, p0}, Lcom/oplus/ovoiceskillservice/ISkillSession;->completeAction(ILcom/oplus/ovoicecommon/bean/ISkillCard;)Z

    :goto_2f
    return-void
.end method
