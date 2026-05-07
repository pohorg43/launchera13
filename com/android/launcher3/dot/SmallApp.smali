.class public Lcom/android/launcher3/dot/SmallApp;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BADGE:Ljava/lang/String; = "badge"

.field public static final BANNER:Ljava/lang/String; = "banner"

.field public static final CHANGEABLE_FOLD:Ljava/lang/String; = "fold_user"

.field public static final CHANGEABLE_SHOW_ICON:Ljava/lang/String; = "statusbar_user"

.field public static final DOT:Ljava/lang/String; = "dot"

.field public static final FOLD:Ljava/lang/String; = "fold"

.field public static final HIDEDETAIL:Ljava/lang/String; = "hidedetail"

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final LIGHT:Ljava/lang/String; = "light"

.field public static final LOCKSCREEN:Ljava/lang/String; = "lockscreen"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NOTIFY:Ljava/lang/String; = "notify"

.field public static final PKG:Ljava/lang/String; = "pkg"

.field public static final PRIORITY:Ljava/lang/String; = "priority"

.field public static final RING:Ljava/lang/String; = "ring"

.field public static final SHOW_ICON:Ljava/lang/String; = "statusbar"

.field private static final TAG:Ljava/lang/String; = "SmallApp"

.field public static final VIBRATE:Ljava/lang/String; = "vibrate"


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mBadgeOption:I

.field private mBanner:Z

.field private mChangeableFold:Z

.field private mChangeableShowIcon:Z

.field private mCircleBadge:Z

.field private mFold:Z

.field private mHideDetail:Z

.field private mIcon:[B

.field private mLight:Z

.field private mLockScreen:Z

.field private mNotify:Z

.field private mPkg:Ljava/lang/String;

.field private mPriority:Z

.field private mPropertiesOnOs6NotAvailable:Z

.field private mShowIcon:Z

.field private mSound:Z

.field private mVibrate:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createByCursor(Landroid/database/Cursor;)Lcom/android/launcher3/dot/SmallApp;
    .registers 7

    new-instance v0, Lcom/android/launcher3/dot/SmallApp;

    invoke-direct {v0}, Lcom/android/launcher3/dot/SmallApp;-><init>()V

    const-string/jumbo v1, "pkg"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dot/SmallApp;->setPkg(Ljava/lang/String;)V

    const-string/jumbo v1, "name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/dot/SmallApp;->setAppName(Ljava/lang/String;)V

    const-string v1, "icon"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dot/SmallApp;->setIcon([B)V

    const-string/jumbo v1, "notify"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3f

    move v1, v3

    goto :goto_40

    :cond_3f
    move v1, v2

    :goto_40
    invoke-virtual {v0, v1}, Lcom/android/launcher3/dot/SmallApp;->setNotify(Z)V

    const-string v1, "lockscreen"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_51

    move v1, v3

    goto :goto_52

    :cond_51
    move v1, v2

    :goto_52
    invoke-virtual {v0, v1}, Lcom/android/launcher3/dot/SmallApp;->setLockScreen(Z)V

    const-string v1, "hidedetail"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_63

    move v1, v3

    goto :goto_64

    :cond_63
    move v1, v2

    :goto_64
    invoke-direct {v0, v1}, Lcom/android/launcher3/dot/SmallApp;->setHideDetail(Z)V

    const-string v1, "badge"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dot/SmallApp;->setBadgeOption(I)V

    const-string v1, "dot"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_82

    move v1, v3

    goto :goto_83

    :cond_82
    move v1, v2

    :goto_83
    invoke-direct {v0, v1}, Lcom/android/launcher3/dot/SmallApp;->setCircleBadge(Z)V

    const-string v1, "banner"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_94

    move v1, v3

    goto :goto_95

    :cond_94
    move v1, v2

    :goto_95
    invoke-virtual {v0, v1}, Lcom/android/launcher3/dot/SmallApp;->setBanner(Z)V

    const-string/jumbo v1, "ring"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_a7

    move v1, v3

    goto :goto_a8

    :cond_a7
    move v1, v2

    :goto_a8
    invoke-virtual {v0, v1}, Lcom/android/launcher3/dot/SmallApp;->setSound(Z)V

    const-string/jumbo v1, "vibrate"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_ba

    move v1, v3

    goto :goto_bb

    :cond_ba
    move v1, v2

    :goto_bb
    invoke-virtual {v0, v1}, Lcom/android/launcher3/dot/SmallApp;->setVibrate(Z)V

    const-string v1, "light"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_cc

    move v1, v3

    goto :goto_cd

    :cond_cc
    move v1, v2

    :goto_cd
    invoke-virtual {v0, v1}, Lcom/android/launcher3/dot/SmallApp;->setLight(Z)V

    const-string/jumbo v1, "priority"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_df

    move v1, v3

    goto :goto_e0

    :cond_df
    move v1, v2

    :goto_e0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/dot/SmallApp;->setPriprity(Z)V

    const-string/jumbo v1, "statusbar"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_ef

    move v4, v3

    goto :goto_f0

    :cond_ef
    move v4, v2

    :goto_f0
    if-eqz v4, :cond_138

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_fe

    move v1, v3

    goto :goto_ff

    :cond_fe
    move v1, v2

    :goto_ff
    invoke-virtual {v0, v1}, Lcom/android/launcher3/dot/SmallApp;->setShowIcon(Z)V

    const-string/jumbo v1, "statusbar_user"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_111

    move v1, v3

    goto :goto_112

    :cond_111
    move v1, v2

    :goto_112
    invoke-virtual {v0, v1}, Lcom/android/launcher3/dot/SmallApp;->setChangeableShowIcon(Z)V

    const-string v1, "fold"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_123

    move v1, v3

    goto :goto_124

    :cond_123
    move v1, v2

    :goto_124
    invoke-virtual {v0, v1}, Lcom/android/launcher3/dot/SmallApp;->setFold(Z)V

    const-string v1, "fold_user"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-ne p0, v3, :cond_134

    move v2, v3

    :cond_134
    invoke-direct {v0, v2}, Lcom/android/launcher3/dot/SmallApp;->setChangeableFold(Z)V

    goto :goto_142

    :cond_138
    invoke-direct {v0}, Lcom/android/launcher3/dot/SmallApp;->setPropertiesOnOs6NotAvailable()V

    sget-object p0, Lcom/android/launcher3/dot/SmallApp;->TAG:Ljava/lang/String;

    const-string v1, "createByCursor: the instant app engine is old->"

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_142
    return-object v0
.end method

.method public static getDrawable(Landroid/content/Context;Lcom/android/launcher3/dot/SmallApp;)Landroid/graphics/drawable/Drawable;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_65

    invoke-virtual {p1}, Lcom/android/launcher3/dot/SmallApp;->getIcon()[B

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_65

    :cond_a
    :try_start_a
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/dot/SmallApp;->getIcon()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/launcher3/dot/SmallApp;->getIcon()[B

    move-result-object p1

    array-length p1, p1

    const/4 v4, 0x0

    invoke-static {v3, v4, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-static {p1}, Lcom/oplus/theme/OplusThirdPartUtil;->getDefaultTheme(I)Z

    move-result p1

    if-eqz p1, :cond_3b

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1, v4}, Lcom/oplus/compat/content/pm/PackageManagerNative;->getUxIconDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_3a
    return-object v0

    :cond_3b
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v3, 0x1

    invoke-static {v1, p0, v3}, Lcom/oplus/theme/OplusConvertIcon;->convertIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_4d} :catch_4e

    return-object p1

    :catch_4e
    move-exception p0

    sget-object p1, Lcom/android/launcher3/dot/SmallApp;->TAG:Ljava/lang/String;

    const-string v1, "getDrawable()--e:"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    :goto_65
    return-object v0
.end method

.method private setAppName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/dot/SmallApp;->mAppName:Ljava/lang/String;

    return-void
.end method

.method private setChangeableFold(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/dot/SmallApp;->mChangeableFold:Z

    return-void
.end method

.method private setCircleBadge(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/dot/SmallApp;->mCircleBadge:Z

    return-void
.end method

.method private setHideDetail(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/dot/SmallApp;->mHideDetail:Z

    return-void
.end method

.method private setPropertiesOnOs6NotAvailable()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dot/SmallApp;->mPropertiesOnOs6NotAvailable:Z

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dot/SmallApp;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getBadgeOption()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dot/SmallApp;->mBadgeOption:I

    return p0
.end method

.method public getIcon()[B
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dot/SmallApp;->mIcon:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getPkg()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dot/SmallApp;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method public isBanner()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/dot/SmallApp;->mBanner:Z

    return p0
.end method

.method public isChangeableFold()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/dot/SmallApp;->mChangeableFold:Z

    return p0
.end method

.method public isChangeableShowIcon()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/dot/SmallApp;->mChangeableShowIcon:Z

    return p0
.end method

.method public isCircleBadge()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/dot/SmallApp;->mCircleBadge:Z

    return p0
.end method

.method public isFold()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/dot/SmallApp;->mFold:Z

    return p0
.end method

.method public isHideDetail()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/dot/SmallApp;->mHideDetail:Z

    return p0
.end method

.method public isLight()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/dot/SmallApp;->mLight:Z

    return p0
.end method

.method public isLockScreen()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/dot/SmallApp;->mLockScreen:Z

    return p0
.end method

.method public isNotify()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/dot/SmallApp;->mNotify:Z

    return p0
.end method

.method public isPriprity()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/dot/SmallApp;->mPriority:Z

    return p0
.end method

.method public isPropertiesOnOs6NotAvailable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/dot/SmallApp;->mPropertiesOnOs6NotAvailable:Z

    return p0
.end method

.method public isShowIcon()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/dot/SmallApp;->mShowIcon:Z

    return p0
.end method

.method public isSound()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/dot/SmallApp;->mSound:Z

    return p0
.end method

.method public isVibrate()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/dot/SmallApp;->mVibrate:Z

    return p0
.end method

.method public setBadgeOption(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/dot/SmallApp;->mBadgeOption:I

    return-void
.end method

.method public setBanner(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/dot/SmallApp;->mBanner:Z

    return-void
.end method

.method public setChangeableShowIcon(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/dot/SmallApp;->mChangeableShowIcon:Z

    return-void
.end method

.method public setFold(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/dot/SmallApp;->mFold:Z

    return-void
.end method

.method public setIcon([B)V
    .registers 2

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/android/launcher3/dot/SmallApp;->mIcon:[B

    return-void
.end method

.method public setLight(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/dot/SmallApp;->mLight:Z

    return-void
.end method

.method public setLockScreen(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/dot/SmallApp;->mLockScreen:Z

    return-void
.end method

.method public setNotify(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/dot/SmallApp;->mNotify:Z

    return-void
.end method

.method public setPkg(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/dot/SmallApp;->mPkg:Ljava/lang/String;

    return-void
.end method

.method public setPriprity(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/dot/SmallApp;->mPriority:Z

    return-void
.end method

.method public setShowIcon(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/dot/SmallApp;->mShowIcon:Z

    return-void
.end method

.method public setSound(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/dot/SmallApp;->mSound:Z

    return-void
.end method

.method public setVibrate(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/dot/SmallApp;->mVibrate:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "pkg:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/dot/SmallApp;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",appName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/dot/SmallApp;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mNotify:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/dot/SmallApp;->mNotify:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mLockScreen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/dot/SmallApp;->mLockScreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mHideDetail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/dot/SmallApp;->mHideDetail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mBadgeOption:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/dot/SmallApp;->mBadgeOption:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",light:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/dot/SmallApp;->mLight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mBanner:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/dot/SmallApp;->mBanner:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mSound:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/dot/SmallApp;->mSound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mVibrate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/dot/SmallApp;->mVibrate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",priority:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/dot/SmallApp;->mPriority:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mCircleBadge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/dot/SmallApp;->mCircleBadge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mShowIcon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher3/dot/SmallApp;->mShowIcon:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
