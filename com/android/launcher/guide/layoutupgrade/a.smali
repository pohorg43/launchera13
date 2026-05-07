.class public final synthetic Lcom/android/launcher/guide/layoutupgrade/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic a:Lcom/android/launcher/guide/layoutupgrade/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/guide/layoutupgrade/a;

    invoke-direct {v0}, Lcom/android/launcher/guide/layoutupgrade/a;-><init>()V

    sput-object v0, Lcom/android/launcher/guide/layoutupgrade/a;->a:Lcom/android/launcher/guide/layoutupgrade/a;

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

    invoke-static {p1, p2}, Lcom/android/launcher/guide/layoutupgrade/FoldScreenLayoutUpgradeGuideActivity;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method
