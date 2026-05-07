.class public Lcom/oplus/quickstep/locksetting/contract/AppEntry;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;


# instance fields
.field private mAlphabeticIndex:I

.field private mIsLocked:Z

.field public final mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

.field public final mPkgFormatStr:Ljava/lang/String;

.field public mPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field public final mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherActivityInfo;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mAlphabeticIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mIsLocked:Z

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppUserId(I)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/multiapp/MultiAppManager;->getMultiAppAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mTitle:Ljava/lang/CharSequence;

    goto :goto_2c

    :cond_26
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mTitle:Ljava/lang/CharSequence;

    :goto_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPkgFormatStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    return-void
.end method


# virtual methods
.method public getAlphabeticIndex()I
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mAlphabeticIndex:I

    if-gez v0, :cond_1c

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Lcom/android/common/sort/ComplexSortUtils;->getInstance()Lcom/android/common/sort/ComplexSortUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/sort/ComplexSortUtils;->getBucketIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mAlphabeticIndex:I

    :cond_1c
    iget p0, p0, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mAlphabeticIndex:I

    return p0
.end method

.method public getInitialChar()C
    .registers 1

    const/16 p0, 0x30

    return p0
.end method

.method public getOrderInfo()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mTitle:Ljava/lang/CharSequence;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getOrderInfo2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPkgFormatStr:Ljava/lang/String;

    return-object p0
.end method

.method public isLocked()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mIsLocked:Z

    return p0
.end method

.method public setLocked(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mIsLocked:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "[title:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPkgFormatStr:Ljava/lang/String;

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
