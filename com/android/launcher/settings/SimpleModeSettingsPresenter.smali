.class public final Lcom/android/launcher/settings/SimpleModeSettingsPresenter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/settings/SimpleModeSettingsPresenter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/settings/SimpleModeSettingsPresenter$Companion;

.field private static final SIMPLE_MODE_ENABLE_KEY:Ljava/lang/String; = "simple_mode_enabled"

.field private static final SIMPLE_MODE_ENABLE_URI:Landroid/net/Uri;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContentObserver:Landroid/database/ContentObserver;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/settings/SimpleModeSettingsPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/SimpleModeSettingsPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/settings/SimpleModeSettingsPresenter;->Companion:Lcom/android/launcher/settings/SimpleModeSettingsPresenter$Companion;

    const-string/jumbo v0, "simple_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/settings/SimpleModeSettingsPresenter;->SIMPLE_MODE_ENABLE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/SimpleModeSettingsPresenter;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static final synthetic access$getMActivity$p(Lcom/android/launcher/settings/SimpleModeSettingsPresenter;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/settings/SimpleModeSettingsPresenter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public final onCreate()V
    .registers 5

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/settings/SimpleModeSettingsPresenter$onCreate$1;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher/settings/SimpleModeSettingsPresenter$onCreate$1;-><init>(Lcom/android/launcher/settings/SimpleModeSettingsPresenter;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/launcher/settings/SimpleModeSettingsPresenter;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/launcher/settings/SimpleModeSettingsPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/settings/SimpleModeSettingsPresenter;->SIMPLE_MODE_ENABLE_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/launcher/settings/SimpleModeSettingsPresenter;->mContentObserver:Landroid/database/ContentObserver;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/settings/SimpleModeSettingsPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/settings/SimpleModeSettingsPresenter;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
