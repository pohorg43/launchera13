.class public Lcom/oplus/uxicon/helper/IconConfig;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ART_PLUS_OFF:I = 0x0

.field public static final ART_PLUS_ON:I = 0x1

.field public static final DARK_MODE_ICON_FALSE:I = 0x0

.field public static final DARK_MODE_ICON_TRUE:I = 0x1

.field public static final ICON_SHAPE_CUSTOM_SQUARE:I = 0x0

.field public static final ICON_SHAPE_DESIGNED_LEAF:I = 0x2

.field public static final ICON_SHAPE_DESIGNED_OCTAGON:I = 0x1

.field public static final ICON_SHAPE_DESIGNED_PECULIAR:I = 0x4

.field public static final ICON_SHAPE_DESIGNED_STICKER:I = 0x3

.field public static final THEME_CUSTOM:I = 0x3

.field public static final THEME_ICON_PACK:I = 0x5

.field public static final THEME_MATERIAL:I = 0x1

.field public static final THEME_PEBBLE:I = 0x4

.field public static final THEME_RECTANGLE:I = 0x2


# instance fields
.field private artPlusOn:I

.field private darkModeIcon:I

.field private foregroundSize:I

.field private foreign:Z

.field private iconRadius:I

.field private iconShape:I

.field private iconSize:I

.field private mIconThemeEnable:Z

.field private mIsLocalSpecial:Z

.field private theme:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/oplus/uxicon/helper/IconConfig;
    .registers 3

    new-instance v0, Lcom/oplus/uxicon/helper/IconConfig;

    invoke-direct {v0}, Lcom/oplus/uxicon/helper/IconConfig;-><init>()V

    iget v1, p0, Lcom/oplus/uxicon/helper/IconConfig;->iconShape:I

    iput v1, v0, Lcom/oplus/uxicon/helper/IconConfig;->iconShape:I

    iget-boolean v1, p0, Lcom/oplus/uxicon/helper/IconConfig;->foreign:Z

    iput-boolean v1, v0, Lcom/oplus/uxicon/helper/IconConfig;->foreign:Z

    iget v1, p0, Lcom/oplus/uxicon/helper/IconConfig;->theme:I

    iput v1, v0, Lcom/oplus/uxicon/helper/IconConfig;->theme:I

    iget v1, p0, Lcom/oplus/uxicon/helper/IconConfig;->iconSize:I

    iput v1, v0, Lcom/oplus/uxicon/helper/IconConfig;->iconSize:I

    iget v1, p0, Lcom/oplus/uxicon/helper/IconConfig;->iconRadius:I

    iput v1, v0, Lcom/oplus/uxicon/helper/IconConfig;->iconRadius:I

    iget v1, p0, Lcom/oplus/uxicon/helper/IconConfig;->artPlusOn:I

    iput v1, v0, Lcom/oplus/uxicon/helper/IconConfig;->artPlusOn:I

    iget v1, p0, Lcom/oplus/uxicon/helper/IconConfig;->foregroundSize:I

    iput v1, v0, Lcom/oplus/uxicon/helper/IconConfig;->foregroundSize:I

    iget v1, p0, Lcom/oplus/uxicon/helper/IconConfig;->darkModeIcon:I

    iput v1, v0, Lcom/oplus/uxicon/helper/IconConfig;->darkModeIcon:I

    iget-boolean v1, p0, Lcom/oplus/uxicon/helper/IconConfig;->mIsLocalSpecial:Z

    iput-boolean v1, v0, Lcom/oplus/uxicon/helper/IconConfig;->mIsLocalSpecial:Z

    iget-boolean p0, p0, Lcom/oplus/uxicon/helper/IconConfig;->mIconThemeEnable:Z

    iput-boolean p0, v0, Lcom/oplus/uxicon/helper/IconConfig;->mIconThemeEnable:Z

    return-object v0
.end method

.method public getArtPlusOn()I
    .registers 1

    iget p0, p0, Lcom/oplus/uxicon/helper/IconConfig;->artPlusOn:I

    return p0
.end method

.method public getDarkModeIcon()I
    .registers 1

    iget p0, p0, Lcom/oplus/uxicon/helper/IconConfig;->darkModeIcon:I

    return p0
.end method

.method public getForegroundSize()I
    .registers 1

    iget p0, p0, Lcom/oplus/uxicon/helper/IconConfig;->foregroundSize:I

    return p0
.end method

.method public getForeign()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/uxicon/helper/IconConfig;->foreign:Z

    return p0
.end method

.method public getIconRadius()I
    .registers 1

    iget p0, p0, Lcom/oplus/uxicon/helper/IconConfig;->iconRadius:I

    return p0
.end method

.method public getIconShape()I
    .registers 1

    iget p0, p0, Lcom/oplus/uxicon/helper/IconConfig;->iconShape:I

    return p0
.end method

.method public getIconSize()I
    .registers 1

    iget p0, p0, Lcom/oplus/uxicon/helper/IconConfig;->iconSize:I

    return p0
.end method

.method public getTheme()I
    .registers 1

    iget p0, p0, Lcom/oplus/uxicon/helper/IconConfig;->theme:I

    return p0
.end method

.method public hasChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->isThemeChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->isArtChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->isIconShapeChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->isRadiusChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->isForegoundSizeChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->isIconSizeChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p0, 0x0

    return p0

    :cond_27
    :goto_27
    const/4 p0, 0x1

    return p0
.end method

.method public isArtChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z
    .registers 2

    iget p0, p0, Lcom/oplus/uxicon/helper/IconConfig;->artPlusOn:I

    iget p1, p1, Lcom/oplus/uxicon/helper/IconConfig;->artPlusOn:I

    if-eq p0, p1, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isDarkModeIcon()Z
    .registers 2

    iget p0, p0, Lcom/oplus/uxicon/helper/IconConfig;->darkModeIcon:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isDarkModeIconChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z
    .registers 2

    iget p0, p0, Lcom/oplus/uxicon/helper/IconConfig;->darkModeIcon:I

    iget p1, p1, Lcom/oplus/uxicon/helper/IconConfig;->darkModeIcon:I

    if-eq p0, p1, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isForegoundSizeChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z
    .registers 2

    iget p0, p0, Lcom/oplus/uxicon/helper/IconConfig;->foregroundSize:I

    iget p1, p1, Lcom/oplus/uxicon/helper/IconConfig;->foregroundSize:I

    if-eq p0, p1, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isIconShapeChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z
    .registers 2

    iget p0, p0, Lcom/oplus/uxicon/helper/IconConfig;->iconShape:I

    iget p1, p1, Lcom/oplus/uxicon/helper/IconConfig;->iconShape:I

    if-eq p0, p1, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isIconSizeChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z
    .registers 2

    iget p0, p0, Lcom/oplus/uxicon/helper/IconConfig;->iconSize:I

    iget p1, p1, Lcom/oplus/uxicon/helper/IconConfig;->iconSize:I

    if-eq p0, p1, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isIconThemeEnable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/uxicon/helper/IconConfig;->mIconThemeEnable:Z

    return p0
.end method

.method public isIconThemeEnableChange(Lcom/oplus/uxicon/helper/IconConfig;)Z
    .registers 2

    iget-boolean p0, p0, Lcom/oplus/uxicon/helper/IconConfig;->mIconThemeEnable:Z

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->isIconThemeEnable()Z

    move-result p1

    if-eq p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isLocalSpecial()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/uxicon/helper/IconConfig;->mIsLocalSpecial:Z

    return p0
.end method

.method public isLocalSpecialChange(Lcom/oplus/uxicon/helper/IconConfig;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/uxicon/helper/IconConfig;->isLocalSpecial()Z

    move-result p0

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->isLocalSpecial()Z

    move-result p1

    if-eq p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isOnlySizeChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->isThemeChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3c

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->isArtChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->isIconShapeChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->isDarkModeIconChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->isLocalSpecialChange(Lcom/oplus/uxicon/helper/IconConfig;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->isIconThemeEnableChange(Lcom/oplus/uxicon/helper/IconConfig;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_3c

    :cond_26
    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->isRadiusChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->isForegoundSizeChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->isIconSizeChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z

    move-result p0

    if-eqz p0, :cond_39

    goto :goto_3a

    :cond_39
    return v1

    :cond_3a
    :goto_3a
    const/4 p0, 0x1

    return p0

    :cond_3c
    :goto_3c
    return v1
.end method

.method public isRadiusChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z
    .registers 2

    iget p0, p0, Lcom/oplus/uxicon/helper/IconConfig;->iconRadius:I

    iget p1, p1, Lcom/oplus/uxicon/helper/IconConfig;->iconRadius:I

    if-eq p0, p1, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isThemeChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z
    .registers 2

    iget p0, p0, Lcom/oplus/uxicon/helper/IconConfig;->theme:I

    iget p1, p1, Lcom/oplus/uxicon/helper/IconConfig;->theme:I

    if-eq p0, p1, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public setArtPlusOn(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/uxicon/helper/IconConfig;->artPlusOn:I

    return-void
.end method

.method public setCustomPropertyToDefault(III)V
    .registers 4

    iput p1, p0, Lcom/oplus/uxicon/helper/IconConfig;->iconSize:I

    iput p3, p0, Lcom/oplus/uxicon/helper/IconConfig;->iconRadius:I

    iput p2, p0, Lcom/oplus/uxicon/helper/IconConfig;->foregroundSize:I

    return-void
.end method

.method public setDarkModeIcon(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/uxicon/helper/IconConfig;->darkModeIcon:I

    return-void
.end method

.method public setForegroundSize(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/uxicon/helper/IconConfig;->foregroundSize:I

    return-void
.end method

.method public setForeign(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/uxicon/helper/IconConfig;->foreign:Z

    return-void
.end method

.method public setIconRadius(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/uxicon/helper/IconConfig;->iconRadius:I

    return-void
.end method

.method public setIconShape(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/uxicon/helper/IconConfig;->iconShape:I

    return-void
.end method

.method public setIconSize(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/uxicon/helper/IconConfig;->iconSize:I

    return-void
.end method

.method public setIconThemeEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/uxicon/helper/IconConfig;->mIconThemeEnable:Z

    return-void
.end method

.method public setLocalSpecial(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/uxicon/helper/IconConfig;->mIsLocalSpecial:Z

    return-void
.end method

.method public setPropertyTo(Lcom/oplus/uxicon/helper/IconConfig;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->isThemeChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/uxicon/helper/IconConfig;->setTheme(I)V

    :cond_10
    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->isArtChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->getArtPlusOn()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/uxicon/helper/IconConfig;->setArtPlusOn(I)V

    :cond_1d
    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->isIconShapeChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->getIconShape()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/uxicon/helper/IconConfig;->setIconShape(I)V

    :cond_2a
    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->isRadiusChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->getIconRadius()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/uxicon/helper/IconConfig;->setIconRadius(I)V

    :cond_37
    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->isForegoundSizeChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->getForegroundSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/uxicon/helper/IconConfig;->setForegroundSize(I)V

    :cond_44
    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->isIconSizeChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/uxicon/helper/IconConfig;->setIconSize(I)V

    :cond_51
    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->isDarkModeIconChanged(Lcom/oplus/uxicon/helper/IconConfig;)Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->getDarkModeIcon()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/uxicon/helper/IconConfig;->setDarkModeIcon(I)V

    :cond_5e
    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->isLocalSpecialChange(Lcom/oplus/uxicon/helper/IconConfig;)Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->isLocalSpecial()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/uxicon/helper/IconConfig;->setLocalSpecial(Z)V

    :cond_6b
    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->isIconThemeEnableChange(Lcom/oplus/uxicon/helper/IconConfig;)Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-virtual {p1}, Lcom/oplus/uxicon/helper/IconConfig;->isIconThemeEnable()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->setIconThemeEnable(Z)V

    :cond_78
    return-void
.end method

.method public setTheme(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/uxicon/helper/IconConfig;->theme:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "IconConfig = [ isForeign : "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/uxicon/helper/IconConfig;->foreign:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",theme : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/uxicon/helper/IconConfig;->theme:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",iconSize : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/uxicon/helper/IconConfig;->iconSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",iconShape : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/uxicon/helper/IconConfig;->iconShape:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",foregroundSize : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/uxicon/helper/IconConfig;->foregroundSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",artPlusOn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/uxicon/helper/IconConfig;->artPlusOn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",iconRadius ："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/uxicon/helper/IconConfig;->iconRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",darkModeIcon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/uxicon/helper/IconConfig;->darkModeIcon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",localSpecial:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/uxicon/helper/IconConfig;->mIsLocalSpecial:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",iconThemeEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/uxicon/helper/IconConfig;->mIconThemeEnable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " ]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
