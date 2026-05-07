.class public final synthetic Lcom/android/launcher/folder/recommend/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/folder/recommend/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/g;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/folder/recommend/g;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/coui/appcompat/couiswitch/COUISwitch;Lcom/coui/appcompat/couiswitch/COUISwitch;Ljava/lang/Runnable;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/folder/recommend/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/g;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/folder/recommend/g;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/folder/recommend/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/g;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/folder/recommend/g;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher/folder/recommend/g;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_26

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/g;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/g;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->b(Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;Landroid/view/View;)V

    return-void

    :pswitch_16  #0x0
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/g;->c:Ljava/lang/Object;

    check-cast v1, Lcom/coui/appcompat/couiswitch/COUISwitch;

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/g;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->a(Lcom/coui/appcompat/couiswitch/COUISwitch;Lcom/coui/appcompat/couiswitch/COUISwitch;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void

    :goto_26
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/g;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/g;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->a(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View;)V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
