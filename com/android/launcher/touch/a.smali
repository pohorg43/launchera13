.class public final synthetic Lcom/android/launcher/touch/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final synthetic a:Lcom/android/launcher/touch/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/touch/a;

    invoke-direct {v0}, Lcom/android/launcher/touch/a;-><init>()V

    sput-object v0, Lcom/android/launcher/touch/a;->a:Lcom/android/launcher/touch/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    invoke-static {p1}, Lcom/android/launcher/touch/ShelfDialog;->a(Landroid/content/DialogInterface;)V

    return-void
.end method
