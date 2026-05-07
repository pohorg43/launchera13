.class Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$Listener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Listener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$1;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$Listener;->a:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$Listener;->a:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_f

    move v0, v3

    goto :goto_17

    :cond_f
    invoke-virtual {v0}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    :goto_17
    if-nez v0, :cond_1f

    xor-int/lit8 p0, p2, 0x1

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void

    :cond_1f
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$Listener;->a:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
