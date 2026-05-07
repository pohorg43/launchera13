.class public final synthetic Lcom/oplus/splitscreen/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/splitscreen/SplitScreenGuideManager$1;Landroid/content/res/Configuration;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/splitscreen/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/splitscreen/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/splitscreen/SplitScreenGuideManager;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/splitscreen/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/splitscreen/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/splitscreen/SplitToggleHelper;Ljava/lang/CharSequence;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/oplus/splitscreen/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/splitscreen/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/splitscreen/SplitToggleHelper;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/oplus/splitscreen/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/splitscreen/e;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/oplus/splitscreen/e;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_2a

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/oplus/splitscreen/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/splitscreen/SplitToggleHelper;

    iget-object p0, p0, Lcom/oplus/splitscreen/e;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->g(Lcom/oplus/splitscreen/SplitToggleHelper;Ljava/lang/String;)V

    return-void

    :pswitch_12  #0x1
    iget-object v0, p0, Lcom/oplus/splitscreen/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/splitscreen/SplitScreenGuideManager;

    iget-object p0, p0, Lcom/oplus/splitscreen/e;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/SplitScreenGuideManager;->a(Lcom/oplus/splitscreen/SplitScreenGuideManager;Ljava/lang/String;)V

    return-void

    :pswitch_1e  #0x0
    iget-object v0, p0, Lcom/oplus/splitscreen/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/splitscreen/SplitScreenGuideManager$1;

    iget-object p0, p0, Lcom/oplus/splitscreen/e;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/Configuration;

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/SplitScreenGuideManager$1;->a(Lcom/oplus/splitscreen/SplitScreenGuideManager$1;Landroid/content/res/Configuration;)V

    return-void

    :goto_2a
    iget-object v0, p0, Lcom/oplus/splitscreen/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/splitscreen/SplitToggleHelper;

    iget-object p0, p0, Lcom/oplus/splitscreen/e;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->j(Lcom/oplus/splitscreen/SplitToggleHelper;Ljava/lang/CharSequence;)V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_12  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
