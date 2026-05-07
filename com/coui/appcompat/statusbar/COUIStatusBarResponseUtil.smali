.class public Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$StatusBarClickListener;
    }
.end annotation


# instance fields
.field public a:Landroid/content/BroadcastReceiver;

.field public b:Landroid/app/Activity;

.field public c:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$StatusBarClickListener;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    iget-boolean v0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->d:Z

    if-nez v0, :cond_42

    new-instance v0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$1;-><init>(Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;)V

    iput-object v0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->a:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.oplus.clicktop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/coui/appcompat/view/COUICompatUtil;->a()Lcom/coui/appcompat/view/COUICompatUtil;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/coui/appcompat/view/COUICompatUtil;->d:[I

    array-length v1, v1

    new-array v2, v1, [C

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v1, :cond_31

    sget-object v4, Lcom/coui/appcompat/view/COUICompatUtil;->d:[I

    aget v4, v4, v3

    sget-object v5, Lcom/coui/appcompat/view/COUICompatUtil;->b:[C

    aget-char v4, v5, v4

    aput-char v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_31
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->d:Z

    iget-object v1, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->b:Landroid/app/Activity;

    iget-object p0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_42
    return-void
.end method
