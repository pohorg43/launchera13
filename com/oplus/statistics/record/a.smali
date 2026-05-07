.class public final synthetic Lcom/oplus/statistics/record/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/statistics/util/Supplier;
.implements Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;
.implements Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$m;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/statistics/record/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/record/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/pm/PackageInfo;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/statistics/record/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/record/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/pm/PackageManager$NameNotFoundException;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/oplus/statistics/record/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/record/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/oplus/statistics/record/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/record/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/oplus/statistics/record/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/record/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/statistics/record/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->c(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/oplus/statistics/record/a;->a:I

    packed-switch v0, :pswitch_data_22

    goto :goto_18

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/oplus/statistics/record/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/pm/PackageInfo;

    invoke-static {p0}, Lcom/oplus/statistics/util/ApkInfoUtil;->a(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_f  #0x0
    iget-object p0, p0, Lcom/oplus/statistics/record/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/statistics/record/ServiceRecorder;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_18
    iget-object p0, p0, Lcom/oplus/statistics/record/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-static {p0}, Lcom/oplus/statistics/util/VersionUtil;->a(Landroid/content/pm/PackageManager$NameNotFoundException;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_f  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method

.method public onConfigureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/statistics/record/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {p0, p1, p2}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->a(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method
