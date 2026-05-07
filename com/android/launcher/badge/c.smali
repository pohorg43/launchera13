.class public final synthetic Lcom/android/launcher/badge/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/badge/BadgeDataProviderCompat;IZLcom/android/launcher3/dot/DotUtils$PackageUserUidKey;Lcom/android/launcher3/dot/OplusDotInfo;)V
    .registers 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/badge/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/c;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher/badge/c;->c:I

    iput-boolean p3, p0, Lcom/android/launcher/badge/c;->d:Z

    iput-object p4, p0, Lcom/android/launcher/badge/c;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/launcher/badge/c;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/ItemInfo;I[IZ)V
    .registers 7

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/badge/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/badge/c;->e:Ljava/lang/Object;

    iput p3, p0, Lcom/android/launcher/badge/c;->c:I

    iput-object p4, p0, Lcom/android/launcher/badge/c;->f:Ljava/lang/Object;

    iput-boolean p5, p0, Lcom/android/launcher/badge/c;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget v0, p0, Lcom/android/launcher/badge/c;->a:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_1a

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher/badge/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;

    iget v1, p0, Lcom/android/launcher/badge/c;->c:I

    iget-boolean v2, p0, Lcom/android/launcher/badge/c;->d:Z

    iget-object v3, p0, Lcom/android/launcher/badge/c;->e:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/dot/DotUtils$PackageUserUidKey;

    iget-object p0, p0, Lcom/android/launcher/badge/c;->f:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/dot/OplusDotInfo;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->c(Lcom/android/launcher/badge/BadgeDataProviderCompat;IZLcom/android/launcher3/dot/DotUtils$PackageUserUidKey;Lcom/android/launcher3/dot/OplusDotInfo;)V

    return-void

    :goto_1a
    iget-object v0, p0, Lcom/android/launcher/badge/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, p0, Lcom/android/launcher/badge/c;->e:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, p0, Lcom/android/launcher/badge/c;->c:I

    iget-object v3, p0, Lcom/android/launcher/badge/c;->f:Ljava/lang/Object;

    check-cast v3, [I

    iget-boolean p0, p0, Lcom/android/launcher/badge/c;->d:Z

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->b(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/ItemInfo;I[IZ)V

    return-void

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
