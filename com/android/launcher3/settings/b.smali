.class public final synthetic Lcom/android/launcher3/settings/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/settings/DeveloperOptionsFragment;

.field public final synthetic c:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/settings/DeveloperOptionsFragment;Landroid/content/Intent;I)V
    .registers 5

    iput p3, p0, Lcom/android/launcher3/settings/b;->a:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_c

    const/4 v0, 0x2

    if-eq p3, v0, :cond_c

    const/4 v0, 0x3

    if-eq p3, v0, :cond_c

    const/4 v0, 0x4

    :cond_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/settings/b;->b:Lcom/android/launcher3/settings/DeveloperOptionsFragment;

    iput-object p2, p0, Lcom/android/launcher3/settings/b;->c:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher3/settings/b;->a:I

    packed-switch v0, :pswitch_data_3c

    goto :goto_33

    :pswitch_6  #0x4
    iget-object v0, p0, Lcom/android/launcher3/settings/b;->b:Lcom/android/launcher3/settings/DeveloperOptionsFragment;

    iget-object p0, p0, Lcom/android/launcher3/settings/b;->c:Landroid/content/Intent;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->g(Lcom/android/launcher3/settings/DeveloperOptionsFragment;Landroid/content/Intent;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_f  #0x3
    iget-object v0, p0, Lcom/android/launcher3/settings/b;->b:Lcom/android/launcher3/settings/DeveloperOptionsFragment;

    iget-object p0, p0, Lcom/android/launcher3/settings/b;->c:Landroid/content/Intent;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->a(Lcom/android/launcher3/settings/DeveloperOptionsFragment;Landroid/content/Intent;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_18  #0x2
    iget-object v0, p0, Lcom/android/launcher3/settings/b;->b:Lcom/android/launcher3/settings/DeveloperOptionsFragment;

    iget-object p0, p0, Lcom/android/launcher3/settings/b;->c:Landroid/content/Intent;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->j(Lcom/android/launcher3/settings/DeveloperOptionsFragment;Landroid/content/Intent;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_21  #0x1
    iget-object v0, p0, Lcom/android/launcher3/settings/b;->b:Lcom/android/launcher3/settings/DeveloperOptionsFragment;

    iget-object p0, p0, Lcom/android/launcher3/settings/b;->c:Landroid/content/Intent;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->e(Lcom/android/launcher3/settings/DeveloperOptionsFragment;Landroid/content/Intent;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_2a  #0x0
    iget-object v0, p0, Lcom/android/launcher3/settings/b;->b:Lcom/android/launcher3/settings/DeveloperOptionsFragment;

    iget-object p0, p0, Lcom/android/launcher3/settings/b;->c:Landroid/content/Intent;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->h(Lcom/android/launcher3/settings/DeveloperOptionsFragment;Landroid/content/Intent;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :goto_33
    iget-object v0, p0, Lcom/android/launcher3/settings/b;->b:Lcom/android/launcher3/settings/DeveloperOptionsFragment;

    iget-object p0, p0, Lcom/android/launcher3/settings/b;->c:Landroid/content/Intent;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->k(Lcom/android/launcher3/settings/DeveloperOptionsFragment;Landroid/content/Intent;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_2a  #00000000
        :pswitch_21  #00000001
        :pswitch_18  #00000002
        :pswitch_f  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
