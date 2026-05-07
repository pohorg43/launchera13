.class public Lb/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/h;->findView()V
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

    iput-object p1, p0, Lb/h$a;->a:Lb/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object p1, p0, Lb/h$a;->a:Lb/h;

    iget-object p1, p1, Lb/h;->mArtSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_68

    iget-object p1, p0, Lb/h$a;->a:Lb/h;

    iget v1, p1, Lb/h;->mCurrentThemePos:I

    invoke-static {p1, v1}, Lb/h;->access$002(Lb/h;I)I

    iget-object p1, p0, Lb/h$a;->a:Lb/h;

    invoke-static {p1}, Lb/h;->access$000(Lb/h;)I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_57

    iget-object p1, p0, Lb/h$a;->a:Lb/h;

    invoke-virtual {p1}, Lb/h;->saveCurrentConfigToPrefs()V

    iget-object p1, p0, Lb/h$a;->a:Lb/h;

    iget-object v1, p1, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getInstance(Landroid/content/Context;)Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/uxicon/ui/util/UxIconConfigResolver;->getCustomThemeConfig()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/oplus/uxicon/helper/IconConfig;->setTheme(I)V

    iget-object p1, p0, Lb/h$a;->a:Lb/h;

    invoke-static {p1}, Lb/h;->access$000(Lb/h;)I

    move-result v1

    iput v1, p1, Lb/h;->mCurrentThemePos:I

    iget-object p1, p0, Lb/h$a;->a:Lb/h;

    invoke-virtual {p1}, Lb/h;->updateConfigFromPreference()V

    iget-object p1, p0, Lb/h$a;->a:Lb/h;

    iget-object v1, p1, Lb/h;->mIconConfigListener:Lcom/oplus/uxicon/ui/listener/UxIconConfigChangeListener;

    iget-object v2, p1, Lb/h;->mIconConfig:Lcom/oplus/uxicon/helper/IconConfig;

    iget v3, p1, Lb/h;->mFontSize:I

    iget-object p1, p1, Lb/h;->mIconPack:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/oplus/uxicon/ui/listener/UxIconConfigChangeListener;->onIconConfigChange(Lcom/oplus/uxicon/helper/IconConfig;ILjava/lang/String;)V

    iget-object p1, p0, Lb/h$a;->a:Lb/h;

    invoke-virtual {p1}, Lb/h;->updateView()V

    iget-object p1, p0, Lb/h$a;->a:Lb/h;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lb/h;->mIsThemeChange:Z

    :cond_57
    iget-object p1, p0, Lb/h$a;->a:Lb/h;

    iget-object p1, p1, Lb/h;->mArtSwitch:Landroid/widget/CompoundButton;

    check-cast p1, Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setTactileFeedbackEnabled(Z)V

    iget-object p0, p0, Lb/h$a;->a:Lb/h;

    iget-object p0, p0, Lb/h;->mArtSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->toggle()V

    return-void

    :cond_68
    iget-object p1, p0, Lb/h$a;->a:Lb/h;

    iget-object p1, p1, Lb/h;->mArtSwitch:Landroid/widget/CompoundButton;

    check-cast p1, Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setTactileFeedbackEnabled(Z)V

    iget-object p0, p0, Lb/h$a;->a:Lb/h;

    iget-object p0, p0, Lb/h;->mArtSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->toggle()V

    return-void
.end method
