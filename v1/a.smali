.class public final synthetic Lv1/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/oplus/apppatformavailability/AppPlatformAvailability;

.field public final synthetic b:Z

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/apppatformavailability/AppPlatformAvailability;ZLandroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/a;->a:Lcom/oplus/apppatformavailability/AppPlatformAvailability;

    iput-boolean p2, p0, Lv1/a;->b:Z

    iput-object p3, p0, Lv1/a;->c:Landroid/app/Activity;

    iput-object p4, p0, Lv1/a;->d:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    iget-object v0, p0, Lv1/a;->a:Lcom/oplus/apppatformavailability/AppPlatformAvailability;

    iget-boolean v1, p0, Lv1/a;->b:Z

    iget-object v2, p0, Lv1/a;->c:Landroid/app/Activity;

    iget-object v3, p0, Lv1/a;->d:Landroid/content/DialogInterface$OnClickListener;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/oplus/apppatformavailability/AppPlatformAvailability;->b(Lcom/oplus/apppatformavailability/AppPlatformAvailability;ZLandroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V

    return-void
.end method
