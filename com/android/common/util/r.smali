.class public final synthetic Lcom/android/common/util/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .registers 3

    iput p2, p0, Lcom/android/common/util/r;->a:I

    packed-switch p2, :pswitch_data_54

    goto :goto_4e

    :pswitch_6  #0xc
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/r;->b:Ljava/util/List;

    return-void

    :pswitch_c  #0xb
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/r;->b:Ljava/util/List;

    return-void

    :pswitch_12  #0xa
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/r;->b:Ljava/util/List;

    return-void

    :pswitch_18  #0x9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/r;->b:Ljava/util/List;

    return-void

    :pswitch_1e  #0x8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/r;->b:Ljava/util/List;

    return-void

    :pswitch_24  #0x7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/r;->b:Ljava/util/List;

    return-void

    :pswitch_2a  #0x6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/r;->b:Ljava/util/List;

    return-void

    :pswitch_30  #0x5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/r;->b:Ljava/util/List;

    return-void

    :pswitch_36  #0x4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/r;->b:Ljava/util/List;

    return-void

    :pswitch_3c  #0x3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/r;->b:Ljava/util/List;

    return-void

    :pswitch_42  #0x2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/r;->b:Ljava/util/List;

    return-void

    :pswitch_48  #0x1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/r;->b:Ljava/util/List;

    return-void

    :goto_4e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/r;->b:Ljava/util/List;

    return-void

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_48  #00000001
        :pswitch_42  #00000002
        :pswitch_3c  #00000003
        :pswitch_36  #00000004
        :pswitch_30  #00000005
        :pswitch_2a  #00000006
        :pswitch_24  #00000007
        :pswitch_1e  #00000008
        :pswitch_18  #00000009
        :pswitch_12  #0000000a
        :pswitch_c  #0000000b
        :pswitch_6  #0000000c
    .end packed-switch
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/common/util/r;->a:I

    packed-switch v0, :pswitch_data_6e

    goto :goto_66

    :pswitch_6  #0xb
    iget-object p0, p0, Lcom/android/common/util/r;->b:Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_e  #0xa
    iget-object p0, p0, Lcom/android/common/util/r;->b:Ljava/util/List;

    check-cast p1, Lcom/android/wm/shell/pip/PipMediaController$ActionListener;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/PipMediaController;->a(Ljava/util/List;Lcom/android/wm/shell/pip/PipMediaController$ActionListener;)V

    return-void

    :pswitch_16  #0x9
    iget-object p0, p0, Lcom/android/common/util/r;->b:Ljava/util/List;

    check-cast p1, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->e(Ljava/util/List;Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;)V

    return-void

    :pswitch_1e  #0x8
    iget-object p0, p0, Lcom/android/common/util/r;->b:Ljava/util/List;

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_26  #0x7
    iget-object p0, p0, Lcom/android/common/util/r;->b:Ljava/util/List;

    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_2e  #0x6
    iget-object p0, p0, Lcom/android/common/util/r;->b:Ljava/util/List;

    check-cast p1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_36  #0x5
    iget-object p0, p0, Lcom/android/common/util/r;->b:Ljava/util/List;

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_3e  #0x4
    iget-object p0, p0, Lcom/android/common/util/r;->b:Ljava/util/List;

    check-cast p1, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/launcher3/QuickstepTransitionManager;->c(Ljava/util/List;Landroid/view/View;)V

    return-void

    :pswitch_46  #0x3
    iget-object p0, p0, Lcom/android/common/util/r;->b:Ljava/util/List;

    check-cast p1, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/launcher3/Launcher;->e(Ljava/util/List;Landroid/view/View;)V

    return-void

    :pswitch_4e  #0x2
    iget-object p0, p0, Lcom/android/common/util/r;->b:Ljava/util/List;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher/Launcher;->K(Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void

    :pswitch_56  #0x1
    iget-object p0, p0, Lcom/android/common/util/r;->b:Ljava/util/List;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0, p1}, Lcom/android/common/util/LauncherLayoutUtils;->c(Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void

    :pswitch_5e  #0x0
    iget-object p0, p0, Lcom/android/common/util/r;->b:Ljava/util/List;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0, p1}, Lcom/android/common/util/LauncherLayoutUtils;->b(Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void

    :goto_66
    iget-object p0, p0, Lcom/android/common/util/r;->b:Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_5e  #00000000
        :pswitch_56  #00000001
        :pswitch_4e  #00000002
        :pswitch_46  #00000003
        :pswitch_3e  #00000004
        :pswitch_36  #00000005
        :pswitch_2e  #00000006
        :pswitch_26  #00000007
        :pswitch_1e  #00000008
        :pswitch_16  #00000009
        :pswitch_e  #0000000a
        :pswitch_6  #0000000b
    .end packed-switch
.end method
