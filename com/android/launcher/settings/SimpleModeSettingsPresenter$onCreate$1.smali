.class public final Lcom/android/launcher/settings/SimpleModeSettingsPresenter$onCreate$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/settings/SimpleModeSettingsPresenter;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/settings/SimpleModeSettingsPresenter;


# direct methods
.method public constructor <init>(Lcom/android/launcher/settings/SimpleModeSettingsPresenter;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/settings/SimpleModeSettingsPresenter$onCreate$1;->this$0:Lcom/android/launcher/settings/SimpleModeSettingsPresenter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p0, p0, Lcom/android/launcher/settings/SimpleModeSettingsPresenter$onCreate$1;->this$0:Lcom/android/launcher/settings/SimpleModeSettingsPresenter;

    invoke-static {p0}, Lcom/android/launcher/settings/SimpleModeSettingsPresenter;->access$getMActivity$p(Lcom/android/launcher/settings/SimpleModeSettingsPresenter;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
