.class public final synthetic Lcom/android/launcher3/w1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/PagedView;Ljava/util/ArrayList;II)V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/w1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/w1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/w1;->c:Ljava/lang/Object;

    iput p3, p0, Lcom/android/launcher3/w1;->d:I

    iput p4, p0, Lcom/android/launcher3/w1;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/dock/DockView;IILcom/oplus/quickstep/dock/DockIconView;)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/w1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/w1;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/w1;->d:I

    iput p3, p0, Lcom/android/launcher3/w1;->e:I

    iput-object p4, p0, Lcom/android/launcher3/w1;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget v0, p0, Lcom/android/launcher3/w1;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_18

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/w1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/PagedView;

    iget-object v1, p0, Lcom/android/launcher3/w1;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/launcher3/w1;->d:I

    iget p0, p0, Lcom/android/launcher3/w1;->e:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/launcher3/PagedView;->f(Lcom/android/launcher3/PagedView;Ljava/util/ArrayList;IILjava/lang/Integer;)V

    return-void

    :goto_18
    iget-object v0, p0, Lcom/android/launcher3/w1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/quickstep/dock/DockView;

    iget v1, p0, Lcom/android/launcher3/w1;->d:I

    iget v2, p0, Lcom/android/launcher3/w1;->e:I

    iget-object p0, p0, Lcom/android/launcher3/w1;->c:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/dock/DockIconView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/oplus/quickstep/dock/DockView;->i(Lcom/oplus/quickstep/dock/DockView;IILcom/oplus/quickstep/dock/DockIconView;Ljava/lang/Boolean;)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
