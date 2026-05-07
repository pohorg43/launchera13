.class public final synthetic Ld0/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic b:Ld0/a;

.field public static final synthetic c:Ld0/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Ld0/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld0/a;-><init>(I)V

    sput-object v0, Ld0/a;->b:Ld0/a;

    new-instance v0, Ld0/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ld0/a;-><init>(I)V

    sput-object v0, Ld0/a;->c:Ld0/a;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Ld0/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget p0, p0, Ld0/a;->a:I

    packed-switch p0, :pswitch_data_e

    goto :goto_a

    :pswitch_6  #0x0
    invoke-static {p1}, Lcom/android/launcher3/qsb/QsbWidgetHostView;->c(Landroid/view/View;)V

    return-void

    :goto_a
    invoke-static {p1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->a(Landroid/view/View;)V

    return-void

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
