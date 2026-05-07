.class public final synthetic Lcom/android/launcher/folder/recommend/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/coui/appcompat/couiswitch/COUISwitch;

.field public final synthetic c:Lcom/android/launcher/folder/recommend/SwitchManageHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/folder/recommend/SwitchManageHelper;Lcom/coui/appcompat/couiswitch/COUISwitch;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/folder/recommend/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/f;->c:Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/f;->b:Lcom/coui/appcompat/couiswitch/COUISwitch;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/coui/appcompat/couiswitch/COUISwitch;Lcom/android/launcher/folder/recommend/SwitchManageHelper;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/folder/recommend/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/f;->b:Lcom/coui/appcompat/couiswitch/COUISwitch;

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/f;->c:Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/folder/recommend/f;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/f;->b:Lcom/coui/appcompat/couiswitch/COUISwitch;

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/f;->c:Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    invoke-static {v0, p0, p1}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->f(Lcom/coui/appcompat/couiswitch/COUISwitch;Lcom/android/launcher/folder/recommend/SwitchManageHelper;Landroid/view/View;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/f;->c:Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/f;->b:Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-static {v0, p0, p1}, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->b(Lcom/android/launcher/folder/recommend/SwitchManageHelper;Lcom/coui/appcompat/couiswitch/COUISwitch;Landroid/view/View;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
