.class public final synthetic Lv/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    iput p2, p0, Lv/c;->a:I

    packed-switch p2, :pswitch_data_8c

    goto/16 :goto_85

    :pswitch_7  #0x15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/c;->b:Ljava/lang/String;

    return-void

    :pswitch_d  #0x14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/c;->b:Ljava/lang/String;

    return-void

    :pswitch_13  #0x13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/c;->b:Ljava/lang/String;

    return-void

    :pswitch_19  #0x12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/c;->b:Ljava/lang/String;

    return-void

    :pswitch_1f  #0x11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/c;->b:Ljava/lang/String;

    return-void

    :pswitch_25  #0x10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/c;->b:Ljava/lang/String;

    return-void

    :pswitch_2b  #0xf
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/c;->b:Ljava/lang/String;

    return-void

    :pswitch_31  #0xe
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/c;->b:Ljava/lang/String;

    return-void

    :pswitch_37  #0xd
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/c;->b:Ljava/lang/String;

    return-void

    :pswitch_3d  #0xc
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/c;->b:Ljava/lang/String;

    return-void

    :pswitch_43  #0xb
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/c;->b:Ljava/lang/String;

    return-void

    :pswitch_49  #0xa
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/c;->b:Ljava/lang/String;

    return-void

    :pswitch_4f  #0x9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/c;->b:Ljava/lang/String;

    return-void

    :pswitch_55  #0x8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/c;->b:Ljava/lang/String;

    return-void

    :pswitch_5b  #0x7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/c;->b:Ljava/lang/String;

    return-void

    :pswitch_61  #0x6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/c;->b:Ljava/lang/String;

    return-void

    :pswitch_67  #0x5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/c;->b:Ljava/lang/String;

    return-void

    :pswitch_6d  #0x4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/c;->b:Ljava/lang/String;

    return-void

    :pswitch_73  #0x3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/c;->b:Ljava/lang/String;

    return-void

    :pswitch_79  #0x2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/c;->b:Ljava/lang/String;

    return-void

    :pswitch_7f  #0x1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/c;->b:Ljava/lang/String;

    return-void

    :goto_85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/c;->b:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_7f  #00000001
        :pswitch_79  #00000002
        :pswitch_73  #00000003
        :pswitch_6d  #00000004
        :pswitch_67  #00000005
        :pswitch_61  #00000006
        :pswitch_5b  #00000007
        :pswitch_55  #00000008
        :pswitch_4f  #00000009
        :pswitch_49  #0000000a
        :pswitch_43  #0000000b
        :pswitch_3d  #0000000c
        :pswitch_37  #0000000d
        :pswitch_31  #0000000e
        :pswitch_2b  #0000000f
        :pswitch_25  #00000010
        :pswitch_1f  #00000011
        :pswitch_19  #00000012
        :pswitch_13  #00000013
        :pswitch_d  #00000014
        :pswitch_7  #00000015
    .end packed-switch
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lv/c;->a:I

    packed-switch v0, :pswitch_data_d0

    goto/16 :goto_c4

    :pswitch_7  #0x14
    iget-object p0, p0, Lv/c;->b:Ljava/lang/String;

    check-cast p1, Lcom/oplus/channel/server/data/Command;

    invoke-static {p0, p1}, Lcom/oplus/channel/server/ClientProxyImpl;->c(Ljava/lang/String;Lcom/oplus/channel/server/data/Command;)Z

    move-result p0

    return p0

    :pswitch_10  #0x13
    iget-object p0, p0, Lv/c;->b:Ljava/lang/String;

    check-cast p1, Lcom/oplus/channel/server/data/Command;

    invoke-static {p0, p1}, Lcom/oplus/channel/server/ClientProxyImpl;->f(Ljava/lang/String;Lcom/oplus/channel/server/data/Command;)Z

    move-result p0

    return p0

    :pswitch_19  #0x12
    iget-object p0, p0, Lv/c;->b:Ljava/lang/String;

    check-cast p1, Lcom/oplus/channel/server/data/Command;

    invoke-static {p0, p1}, Lcom/oplus/channel/server/ClientProxyImpl;->b(Ljava/lang/String;Lcom/oplus/channel/server/data/Command;)Z

    move-result p0

    return p0

    :pswitch_22  #0x11
    iget-object p0, p0, Lv/c;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->h(Ljava/lang/String;Lcom/android/wm/shell/bubbles/Bubble;)Z

    move-result p0

    return p0

    :pswitch_2b  #0x10
    iget-object p0, p0, Lv/c;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->g(Ljava/lang/String;Lcom/android/wm/shell/bubbles/Bubble;)Z

    move-result p0

    return p0

    :pswitch_34  #0xf
    iget-object p0, p0, Lv/c;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/FolderNameProvider;->b(Ljava/lang/String;Lcom/android/launcher3/model/data/AppInfo;)Z

    move-result p0

    return p0

    :pswitch_3d  #0xe
    iget-object p0, p0, Lv/c;->b:Ljava/lang/String;

    check-cast p1, Landroid/content/pm/ProviderInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/Utilities;->a(Ljava/lang/String;Landroid/content/pm/ProviderInfo;)Z

    move-result p0

    return p0

    :pswitch_46  #0xd
    iget-object p0, p0, Lv/c;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->j(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z

    move-result p0

    return p0

    :pswitch_4f  #0xc
    iget-object p0, p0, Lv/c;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->n(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result p0

    return p0

    :pswitch_58  #0xb
    iget-object p0, p0, Lv/c;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->e(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z

    move-result p0

    return p0

    :pswitch_61  #0xa
    iget-object p0, p0, Lv/c;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->d(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result p0

    return p0

    :pswitch_6a  #0x9
    iget-object p0, p0, Lv/c;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->a(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z

    move-result p0

    return p0

    :pswitch_73  #0x8
    iget-object p0, p0, Lv/c;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->o(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result p0

    return p0

    :pswitch_7c  #0x7
    iget-object p0, p0, Lv/c;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->p(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z

    move-result p0

    return p0

    :pswitch_85  #0x6
    iget-object p0, p0, Lv/c;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->b(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result p0

    return p0

    :pswitch_8e  #0x5
    iget-object p0, p0, Lv/c;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->l(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z

    move-result p0

    return p0

    :pswitch_97  #0x4
    iget-object p0, p0, Lv/c;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->m(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z

    move-result p0

    return p0

    :pswitch_a0  #0x3
    iget-object p0, p0, Lv/c;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->c(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z

    move-result p0

    return p0

    :pswitch_a9  #0x2
    iget-object p0, p0, Lv/c;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->i(Ljava/lang/String;Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Z

    move-result p0

    return p0

    :pswitch_b2  #0x1
    iget-object p0, p0, Lv/c;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->h(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result p0

    return p0

    :pswitch_bb  #0x0
    iget-object p0, p0, Lv/c;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->g(Ljava/lang/String;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result p0

    return p0

    :goto_c4
    iget-object p0, p0, Lv/c;->b:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    sget v0, Lb4/c;->a:I

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_bb  #00000000
        :pswitch_b2  #00000001
        :pswitch_a9  #00000002
        :pswitch_a0  #00000003
        :pswitch_97  #00000004
        :pswitch_8e  #00000005
        :pswitch_85  #00000006
        :pswitch_7c  #00000007
        :pswitch_73  #00000008
        :pswitch_6a  #00000009
        :pswitch_61  #0000000a
        :pswitch_58  #0000000b
        :pswitch_4f  #0000000c
        :pswitch_46  #0000000d
        :pswitch_3d  #0000000e
        :pswitch_34  #0000000f
        :pswitch_2b  #00000010
        :pswitch_22  #00000011
        :pswitch_19  #00000012
        :pswitch_10  #00000013
        :pswitch_7  #00000014
    .end packed-switch
.end method
