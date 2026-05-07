.class public interface abstract Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/locksetting/contract/LockSettingContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract createNewSwitchPreference(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/coui/appcompat/preference/COUISwitchPreference;
.end method

.method public abstract enterPowerSaveMode(Z)V
.end method

.method public abstract initPreference(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removePreference(Lcom/coui/appcompat/preference/COUISwitchPreference;)V
.end method

.method public abstract showBottomDivider(Z)V
.end method

.method public abstract showLoadingView(Z)V
.end method

.method public abstract showLockedCategory(Z)V
.end method

.method public abstract showUnLockedCategory(Z)V
.end method

.method public abstract updateMemoryInfoSwitch(Z)V
.end method

.method public abstract updatePhoneManagerEntranceSwitch(Z)V
.end method

.method public abstract updatePreference(Lcom/oplus/quickstep/locksetting/contract/AppEntry;)V
.end method

.method public abstract updatePreferenceIcon(Lcom/oplus/quickstep/locksetting/contract/AppEntry;Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract updatePreferenceTitleCount(Z)V
.end method
