.class public final synthetic Lcom/oplus/quickstep/rapidreaction/utils/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic a:Lcom/oplus/quickstep/rapidreaction/utils/c;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/rapidreaction/utils/c;

    invoke-direct {v0}, Lcom/oplus/quickstep/rapidreaction/utils/c;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/c;->a:Lcom/oplus/quickstep/rapidreaction/utils/c;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-static {p1, p2}, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->c(Landroid/content/DialogInterface;I)V

    return-void
.end method
