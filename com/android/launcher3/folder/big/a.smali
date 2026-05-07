.class public final synthetic Lcom/android/launcher3/folder/big/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/folder/big/BigFolderIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/big/BigFolderIcon;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher3/folder/big/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/a;->b:Lcom/android/launcher3/folder/big/BigFolderIcon;

    return-void
.end method


# virtual methods
.method public final onAlarm(Lcom/android/launcher3/Alarm;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/folder/big/a;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/folder/big/a;->b:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->o(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/Alarm;)V

    return-void

    :goto_c
    iget-object p0, p0, Lcom/android/launcher3/folder/big/a;->b:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->p(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/Alarm;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
