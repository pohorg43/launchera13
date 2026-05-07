.class public Lcom/android/launcher/togglebar/item/ToggleBarWallpaperItem;
.super Lcom/android/launcher/togglebar/item/ToggleBarItem;
.source ""


# instance fields
.field private mIsLiveWallpapers:Z

.field private mIsMoreWallpapers:Z

.field private mWallpaperInfo:Landroid/app/WallpaperInfo;

.field private mWallpaperPath:Ljava/lang/String;

.field private mWallpaperResName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/togglebar/item/ToggleBarItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsLiveWallpapers()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/togglebar/item/ToggleBarWallpaperItem;->mIsLiveWallpapers:Z

    return p0
.end method

.method public getIsMoreWallpapers()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/togglebar/item/ToggleBarWallpaperItem;->mIsMoreWallpapers:Z

    return p0
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/item/ToggleBarWallpaperItem;->mWallpaperInfo:Landroid/app/WallpaperInfo;

    return-object p0
.end method

.method public getWallpaperPath()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/item/ToggleBarWallpaperItem;->mWallpaperPath:Ljava/lang/String;

    return-object p0
.end method

.method public getWallpaperResName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/item/ToggleBarWallpaperItem;->mWallpaperResName:Ljava/lang/String;

    return-object p0
.end method

.method public setIsLiveWallpapers(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/togglebar/item/ToggleBarWallpaperItem;->mIsLiveWallpapers:Z

    return-void
.end method

.method public setIsMoreWallpapers(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/togglebar/item/ToggleBarWallpaperItem;->mIsMoreWallpapers:Z

    return-void
.end method

.method public setWallpaperInfo(Landroid/app/WallpaperInfo;)Lcom/android/launcher/togglebar/item/ToggleBarWallpaperItem;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/togglebar/item/ToggleBarWallpaperItem;->mWallpaperInfo:Landroid/app/WallpaperInfo;

    return-object p0
.end method

.method public setWallpaperPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/togglebar/item/ToggleBarWallpaperItem;->mWallpaperPath:Ljava/lang/String;

    return-void
.end method

.method public setWallpaperResName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/togglebar/item/ToggleBarWallpaperItem;->mWallpaperResName:Ljava/lang/String;

    return-void
.end method
