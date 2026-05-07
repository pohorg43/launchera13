.class public Lb/h$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/h;->initArtSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/h;


# direct methods
.method public constructor <init>(Lb/h;)V
    .registers 2

    iput-object p1, p0, Lb/h$b;->a:Lb/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    if-eqz p2, :cond_b

    iget-object p1, p0, Lb/h$b;->a:Lb/h;

    iget-object p1, p1, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/oplus/uxicon/helper/IconConfig;->setArtPlusOn(I)V

    goto :goto_13

    :cond_b
    iget-object p1, p0, Lb/h$b;->a:Lb/h;

    iget-object p1, p1, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/oplus/uxicon/helper/IconConfig;->setArtPlusOn(I)V

    :goto_13
    iget-object p0, p0, Lb/h$b;->a:Lb/h;

    iget-boolean p1, p0, Lb/h;->mIsThemeChange:Z

    if-nez p1, :cond_24

    iget-object p1, p0, Lb/h;->mIconConfigListener:Lcom/oplus/uxicon/ui/listener/UxIconConfigChangeListener;

    iget-object p2, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    iget v0, p0, Lb/h;->mFontSize:I

    iget-object p0, p0, Lb/h;->mIconPack:Ljava/lang/String;

    invoke-interface {p1, p2, v0, p0}, Lcom/oplus/uxicon/ui/listener/UxIconConfigChangeListener;->onIconConfigChange(Lcom/oplus/uxicon/helper/IconConfig;ILjava/lang/String;)V

    :cond_24
    return-void
.end method
