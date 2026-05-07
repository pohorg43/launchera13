.class public final synthetic Lcom/android/launcher/settings/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher/settings/LauncherSettingsFragment;

.field public final synthetic c:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;I)V
    .registers 5

    iput p3, p0, Lcom/android/launcher/settings/f;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/f;->b:Lcom/android/launcher/settings/LauncherSettingsFragment;

    iput-object p2, p0, Lcom/android/launcher/settings/f;->c:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/settings/f;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/launcher/settings/f;->b:Lcom/android/launcher/settings/LauncherSettingsFragment;

    iget-object p0, p0, Lcom/android/launcher/settings/f;->c:Landroid/content/Intent;

    invoke-static {v0, p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->l(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;Landroid/view/View;)V

    return-void

    :pswitch_e  #0x0
    iget-object v0, p0, Lcom/android/launcher/settings/f;->b:Lcom/android/launcher/settings/LauncherSettingsFragment;

    iget-object p0, p0, Lcom/android/launcher/settings/f;->c:Landroid/content/Intent;

    invoke-static {v0, p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->k(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;Landroid/view/View;)V

    return-void

    :goto_16
    iget-object v0, p0, Lcom/android/launcher/settings/f;->b:Lcom/android/launcher/settings/LauncherSettingsFragment;

    iget-object p0, p0, Lcom/android/launcher/settings/f;->c:Landroid/content/Intent;

    invoke-static {v0, p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->h(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;Landroid/view/View;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
