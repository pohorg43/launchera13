.class Lcom/android/launcher/settings/LauncherModelIntroductionPreference$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/settings/LauncherModelIntroductionPreference;


# direct methods
.method public constructor <init>(Lcom/android/launcher/settings/LauncherModelIntroductionPreference;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference$1;->this$0:Lcom/android/launcher/settings/LauncherModelIntroductionPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference$1;->this$0:Lcom/android/launcher/settings/LauncherModelIntroductionPreference;

    invoke-static {p0}, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->access$000(Lcom/android/launcher/settings/LauncherModelIntroductionPreference;)Lcom/android/launcher/settings/LauncherModelIntroductionPreference$OnModeClickListener;

    move-result-object p0

    sget-object p1, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    invoke-interface {p0, p1}, Lcom/android/launcher/settings/LauncherModelIntroductionPreference$OnModeClickListener;->onModeClickListener(Lcom/android/launcher/mode/LauncherMode;)Z

    return-void
.end method
