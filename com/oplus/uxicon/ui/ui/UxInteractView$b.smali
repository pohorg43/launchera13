.class public Lcom/oplus/uxicon/ui/ui/UxInteractView$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/uxicon/ui/ui/UxInteractView;->setViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/oplus/uxicon/ui/ui/UxInteractView;


# direct methods
.method public constructor <init>(Lcom/oplus/uxicon/ui/ui/UxInteractView;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$b;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$b;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    iget-object p1, p1, Lb/h;->mLocalSpecialSwitch:Lcom/coui/appcompat/couiswitch/COUISwitch;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setTactileFeedbackEnabled(Z)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$b;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    iget-object p1, p1, Lb/h;->mLocalSpecialSwitch:Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$b;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    iget-object v0, p1, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    iget-object p1, p1, Lb/h;->mLocalSpecialSwitch:Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/oplus/uxicon/helper/IconConfig;->setLocalSpecial(Z)V

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxInteractView$b;->a:Lcom/oplus/uxicon/ui/ui/UxInteractView;

    iget-object p1, p0, Lb/h;->mIconConfigListener:Lcom/oplus/uxicon/ui/listener/UxIconConfigChangeListener;

    iget-object v0, p0, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    iget v1, p0, Lb/h;->mFontSize:I

    iget-object p0, p0, Lb/h;->mIconPack:Ljava/lang/String;

    invoke-interface {p1, v0, v1, p0}, Lcom/oplus/uxicon/ui/listener/UxIconConfigChangeListener;->onIconConfigChange(Lcom/oplus/uxicon/helper/IconConfig;ILjava/lang/String;)V

    return-void
.end method
